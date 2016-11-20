<?php include '../includes/navbar.php';?>

<div class="content">
  <?php
      try {
        // retrieve posts from Database
          $stmt = $conn->prepare('SELECT * FROM posts');
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
        echo '<div class="panel-footer">Posted on '.date('jS M Y H:i:s', strtotime($row['timestamp'])).'</div>';
        // echo '<p><a href="show.php?id='.$row['id'].'">Read More</a></p>';
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
