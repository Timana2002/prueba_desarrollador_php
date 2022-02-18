<?php

include_once('Model/employee.php');

class admin{

    public $model;

    public function __construct(){

        $this->model = new employee();
    }

    public function index(){

        include_once 'View/home.php';
    }

    
}