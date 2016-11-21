<?php include '../includes/navbar.php';?>

<div class="content">
  <!-- Add post -->
  <?php if ($_SESSION['user'] != '' && $_SESSION['admin'] == 1){
    echo '<div class="panel panel-default col-md-6 col-md-offset-3"><div class="panel-heading">Admin Controlls</div><div class="panel-body">';
    echo '<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#post" id="addpost">Create post </button>';
    echo '<a href="../admin/dashboard.php?p=posts"><button style="float:right;" type="button" class="btn btn-info btn-lg">Posts Report</button></a>';
    echo '</div></div>';
} ?>
<!-- Modal -->
  <div class="modal fade" id="post" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Add post</h4>
        </div>
        <div class="modal-body">
          <?php include '../posts/new.php';?>
        </div>

      </div>
    </div>
  </div> <!-- End Modal -->

  <!-- Show Posts -->

  <?php
      try {
        // retrieve posts from Database
          $stmt = $conn->prepare('SELECT * FROM posts ORDER BY posts.timestamp DESC ');
          $stmt->execute();
          $result = $stmt->fetchAll();
          $count = 0;

          foreach( $result as $row ) {
            //show content snippet
            $content = $row['content'];
            $content = strip_tags($content);
          if (strlen($content) > 500) {
              $stringCut = substr($content, 0, 500);
              $content = substr($stringCut, 0, strrpos($stringCut, ' '));
            } //End if strlen

            //Display only 3 cols per row
          if($count==0 OR is_int($count/3)){
              echo '<div class="row">';
          }
        echo '<div class="col-md-4">';
        //show posts
        echo '<div class="panel panel-info" >';
        echo '<div class="panel-heading"><a href="show.php?id='.$row['post_id'].'">'.$row['title'].'</a></div>';
        echo '<div class="panel-body" style="min-height: 200;max-height: 200;overflow-y: hidden;">'.$content.'</div>';
        echo '<div class="panel-footer">Posted on '.date('jS M Y H:i:s', strtotime($row['timestamp']));
        if ($_SESSION['user'] != '' && $_SESSION['admin'] == 1){
        echo '<a style="float:right" href="destroy.php?id='.$row['post_id'].'">Delete</a>';}
        echo '</div>';
        echo '</div>';
        echo '</div>';
        $count++;
          if($count==3 OR is_int($count/3)){
              echo '</div>';
          }

  }

      } catch (PDOException $e) {
          echo $e->getMessage();
      }
  ?>

</div>
