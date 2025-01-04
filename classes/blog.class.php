<?php

class Blog extends DbConnect {


    public function getHomeBlogPosts(){

        $sql = 'select * from posts order by created_at desc limit 5';
        $query = $this -> connect() -> query($sql);
        $posts = $query -> fetchAll();
        return $posts;



    }// getHomeBlogPosts








}// Blog

