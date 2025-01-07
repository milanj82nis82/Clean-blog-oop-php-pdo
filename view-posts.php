<?php require_once ( 'include/config.inc.php'); ?>
<?php require_once ( 'include/db.inc.php'); ?>
<?php require_once ( 'include/class_autoloader.inc.php'); ?>
<?php

try {

    $blog = new Blog();
    $user = new User();
    $category = new Category();
    $postId = (int)$_GET['id'];

    if( !isset( $postId ) && empty($postId )){
        header('Location:index.php');

    }// end if

    $postTitle = $blog -> getBlogDetails( $postId)['title'];
    $postContent = $blog -> getBlogDetails( $postId)['content'];
    $postUserId = $blog -> getBlogDetails( $postId)['user_id'];
    $postCategoryId = $blog -> getBlogDetails( $postId)['category_id'];
    $postCreatedAt = $blog -> getBlogDetails( $postId)['created_at'];



} catch ( PDOException $e ){
    echo $e -> getMessage();
}



?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <?php require_once ( 'partials/__head.inc.php'); ?>
    <title><?php echo $postTitle  ?> | <?php echo SITE_NAME ;?></title>
    </head>
    <body>

    <?php require_once ('partials/__nav.inc.php'); ?>

       
<?php require_once ( 'partials/__header.inc.php'); ?>

   
<article class="mb-4">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-12 col-lg-12 col-xl-12">
                       
<h3><?php echo $postTitle ?></h3>
<hr>


<?php echo $postContent; ?>

                        <p>
                        Posted by <strong><?php  echo $user -> getUserDetailsById($postUserId)['first_name'] .' 
                        '.  $user -> getUserDetailsById($postUserId)['last_name'] ?></strong> on 
                        <strong><?php echo $postCreatedAt ?></strong> 
                        in <strong><?php  echo $category -> getCategoryDetails($postCategoryId)['name'] ?></strong> category
                        </p>
                    </div>
                </div>
            </div>
        </article>







          <?php require_once ( 'partials/__footer.inc.php'); ?>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
