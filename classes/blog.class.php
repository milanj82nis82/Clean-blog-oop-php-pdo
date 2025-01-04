<?php

class Blog extends DbConnect {


    public function getHomeBlogPosts(){

        $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
        $perPage = isset($_GET['per-page']) && (int)$_GET['per-page'] <= 5 ? (int)$_GET['per-page'] : 5;
        $start = ( $page > 1 ) ? ( $page * $perPage ) - $perPage : 0;


        $sql = 'select * from posts order by created_at desc LIMIT :start , :perPage ';
        $query = $this -> connect() -> prepare($sql);
        $query -> bindParam( ':start' , $start , PDO::PARAM_INT);
        $query -> bindParam( ':perPage' , $perPage , PDO::PARAM_INT);
        $query -> execute();
        $posts = $query -> fetchAll();
      
        $sql = 'select * from posts ';
        $query = $this -> connect() -> query($sql);
        $postsCount = $query -> fetchAll();
        $AllCount = count( $postsCount);

        $pages = ceil( $AllCount / $perPage);

        return array( 'posts' => $posts , 'pages' => $pages , 'per-page' => $perPage);
        





        return $posts;





    }// getHomeBlogPosts








}// Blog

