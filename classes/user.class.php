<?php

class User extends DbConnect {


public function getUserDetailsById($id ){


    $sql = 'select * from users where id = ? limit 1 ';
    $query = $this -> connect() -> prepare($sql);
    $query -> execute( [ $id ] );   
    $user = $query -> fetch();
    return $user;
}// getUserDetailsById





}// User

