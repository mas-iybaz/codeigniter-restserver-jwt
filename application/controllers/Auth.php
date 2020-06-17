<?php

defined('BASEPATH') or exit('No direct script access allowed');

use Firebase\JWT\JWT;

class Auth extends EC_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function login_post()
    {
        // Get user form-data
        $email = $this->post('email');
        $password = $this->post('password');

        // Retrieve the key from application/config/config.php
        $key = $this->config->item('jwt_key');

        // Check user
        $user = $this->db->get_where('users', ['email' => $email])->row_object();

        if (!$user) {
            // User not found, return 404
            $this->response([
                'status'    => false,
                'message'   => 'User not found!'
            ], 404);
        } else {
            // Check user password
            if (!(password_verify($password, $user->password))) {
                // Password not match, return 400
                $this->response([
                    'status'    => false,
                    'message'   => 'Password not match!'
                ], 400);
            } else {
                // Login Success, Generate JWT Token
                $date = new DateTime();

                $token = [
                    'id'    => $user->id,
                    'email' => $user->email,
                    'iat'   => $date->getTimestamp(),
                    'exp'   => $date->getTimestamp() + (60 * 5)
                ];

                $generatedToken = JWT::encode($token, $key);

                // Return 200
                $this->response([
                    'token' => $generatedToken
                ], 200);
            }
        }
    }
}
