<?php
defined('BASEPATH') or exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

use Firebase\JWT\JWT;
use Firebase\JWT\BeforeValidException;
use Firebase\JWT\ExpiredException;
use Firebase\JWT\SignatureInvalidException;

class EC_Controller extends RestController
{
    private $user_credential;

    public function __construct()
    {
        parent::__construct();
    }

    public function authMiddleware()
    {
        //JWT Auth middleware
        $headers = $this->input->get_request_header('Authorization');

        $key = $this->config->item('jwt_key'); //secret key for encode and decode
        $token = "thisIsToken";

        if (!empty($headers)) {
            if (preg_match('/Bearer\s(\S+)/', $headers, $matches)) {
                $token = $matches[1];
            }
        } else {
            $this->response([
                'status'    => false,
                'message'   => 'UNAUTHORIZED'
            ], 401);
        }

        try {
            $decoded = JWT::decode($token, $key, array('HS256'));
            $this->user_data = $decoded;
        } catch (Exception $e) {
            $invalid = ['status' => $e->getMessage()]; //Respon if credential invalid
            $this->response($invalid, 401); //401
        }
    }
}
