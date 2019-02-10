<?php
/**
 * @since       v0.1.0
 * @package     Dev-PHP
 * @author      Andre Board <dre.board@gmail.com>
 * @version     v1.0
 * @access      public
 * @see         https://github.com/dreboard
 */
date_default_timezone_set('America/New_York');
if(env('APP_ENV') === 'local'){
    ini_set('xdebug.remote_autostart', 0);
    ini_set('xdebug.remote_enable', 1);
    ini_set('xdebug.remote_handler', "dbgp");
    ini_set('xdebug.remote_log', storage_path('/debug/'.date('Y-m-d').'.txt'));
    ini_set('xdebug.remote_port', 9000);
    ini_set('xdebug.remote_cookie_expire_time', 36000);
}