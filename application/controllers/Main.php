<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Main extends EC_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->authMiddleware();
    }

    public function test_get()
    {
        $credentials = $this->user_data;

        $this->response([
            'status'    => true,
            'data'      => $credentials
        ], 200);
    }

    public function users_get()
    {
        // Select All User
        $users = $this->db->get('users')->result_object();

        $this->response([
            'status'    => true,
            'data'      => $users
        ], 200);
    }
}
