<?php include '../includes/navbar.php';?>

<div class="content">
  <!-- Add Event -->
  <?php if ($_SESSION['user'] != '' && $_SESSION['admin'] == 1){
    echo '<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#event" id="addevent">Add Event </button>';
} ?>
<!-- Modal -->
  <div class="modal fade" id="event" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Add Event</h4>
        </div>
        <div class="modal-body">
          <?php include '../events/new.php';?>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div> <!-- End Modal -->


  <!-- Show Events -->
  <?php
      try {
        // retrieve events from Database
          $stmt = $conn->prepare('SELECT * FROM events');
          $stmt->execute();
          $result = $stmt->fetchAll();
          $count = 0;

          foreach( $result as $row ) {
            //show details snippet
            $details = $row['details'];
            $details = strip_tags($details);
          if (strlen($details) > 500) {
              $stringCut = substr($details, 0, 500);
              $details = substr($stringCut, 0, strrpos($stringCut, ' '));
            } //End if strlen

            //Display only 3 cols per row
          if($count==0 OR is_int($count/3)){
              echo '<div class="row">';
          }
        echo '<div class="col-md-4">';
        //show posts
        echo '<div class="panel panel-success" >';
        echo '<div class="panel-heading"><a href="show.php?id='.$row['event_id'].'">'.$row['title'].'</a></div>';
        echo '<div class="panel-body" style="min-height: 200;max-height: 200;overflow-y: hidden;">'.$details.'</div>';
        echo '<div class="panel-footer">Event on '.date('jS M Y', strtotime($row['date']));
        echo '<a style="float:right" href="show.php?id='.$row['event_id'].'">Read More</a></div>';
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

</div> <!-- End Content -->
