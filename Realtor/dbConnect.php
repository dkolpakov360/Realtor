<?php

namespace Realtor;

use PDO;

class dbConnect 
{
    private $_connect;

    public function __construct()
    {
        $_connect = new PDO('mysql:dbname=realtor;host=127.0.0.1', 'root', 'root', array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));

        $this->_connect = $_connect;
    }

    public function getConnect()
    {
        return $this->_connect;
    }
}
