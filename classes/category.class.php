<?php

class Category extends DbConnect{


    public function getCategoryDetails($id){

        $sql = 'select * from categories where id = ? limit 1 ';
        $query = $this -> connect() -> prepare($sql);
        $query -> execute( [ $id ]);
        $result = $query -> fetch();
        return $result;


    }// getCategoryDetails




}// category

