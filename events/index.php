<?php include '../includes/navbar.php';?>

<div class="content">
  <!-- Admin Controls-->
  <?php if ($_SESSION['user'] != '' && $_SESSION['admin'] == 1){
    echo '<div class="panel panel-default col-md-6 col-md-offset-3"><div class="panel-heading">Admin Controlls</div><div class="panel-body">';
    echo '<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#event" id="addevent">Create Event </button>';
    echo '<a href="../admin/dashboard.php?p=events"><button style="float:right;" type="button" class="btn btn-info btn-lg">Events Report</button></a>';
    echo '</div></div>';
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

      </div>
    </div>
  </div> <!-- End Modal -->


  <!-- Show Events -->
  <?php
  try {
    // retrieve events from Database
    $stmt = $conn->prepare('SELECT * FROM events ORDER BY events.date DESC');
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
      if ($_SESSION['user'] != '' && $_SESSION['admin'] == 1){
        echo '<a style="float:right" href="destroy.php?id='.$row['event_id'].'">Delete</a>';}
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

</div> <!-- End Content -->
