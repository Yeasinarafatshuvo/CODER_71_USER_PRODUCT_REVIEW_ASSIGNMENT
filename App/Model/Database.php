<?php

namespace App\Model;

use PDO;
use PDOException;

class Database 
{
    private $host = 'localhost';
    private $dbname = 'product_review_db';
    private $username = 'root';
    private $password = '';
    protected $pdo;


    public function connect()
    {

        try {
            $this->pdo = new PDO("mysql:host=$this->host;dbname=$this->dbname", $this->username, $this->password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        } catch( PDOException $e){
            echo 'Connection Error: ' . $e->getMessage();
        }

        return $this->pdo;
    }
}
