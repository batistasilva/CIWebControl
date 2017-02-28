<?php

/**
 * Responsible to valid session
 */
class Auth
{

    public static function handleLogin()
    {
        @session_start();
        //
        $user_ar = $_SESSION['userid'];
        //
        if (!isset($user_ar)) {
            session_destroy();
            header('location: ../mnglogin');
            exit;
        }
    }

}
