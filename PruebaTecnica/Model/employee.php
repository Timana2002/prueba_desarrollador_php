<?php

class employee{

    public function __construct(){

        try{
            $this->con = conexion::conectar();

        }catch(Exception $e){
            die($e->getMessage());
        }

    }

    public function getAllEmployee(){

        

        $query = "SELECT lastname, description FROM appx_employee INNER JOIN 
        appx_educationlevel ON appx_employee.educationlevel_id = appx_educationlevel.id_education  
        WHERE salary > 250000 ORDER BY lastname";
  

        $stmt = $this->con->prepare($query);
        $totalData = $stmt->execute();      

        $totalFilter = $totalData;      
        $data = array();   
            

        while($row = $stmt->fetch())
        {
            $subdata = array();
            $subdata[] = $row[0];
            $subdata[] = $row[1];     

            $data[] = $subdata;
        }

        $json_data = array(
            "recordsTotal"      => intval($totalData),
            "recordsFiltered"   => intval($totalFilter),
            "data"              => $data
        );

        return json_encode($json_data);

    }
}