<?php include '../includes/navbar.php';?>

<div class="content text-center" style="max-width:70%; margin:0 auto; margin-top:70px;">
<!-- Show Event -->
  <?php
  $eventid = $_GET['id'];
  $stmt = $conn->prepare('SELECT * FROM events WHERE event_id = :id');
  $stmt->execute(array(':id' => $eventid ));
  $row = $stmt->fetch();
  echo '<div>';
  echo '<h1>'.$row['title'].'</h1>';
  echo '<p>Event on '.date('jS M Y', strtotime($row['date'])).'</p>';
  echo '<hr></hr>';
  echo '<p>'.$row['details'].'</p>';
  echo '</div>';
  if($row['event_id'] == ''){
      header('Location: ./');
      exit;
    }
  ?>

<!--  Show Event End -->
  <hr></hr>
  <div class="col-md-6">
    <ul style="list-style-type:none;">
      <li> <i class="fa fa-map-marker"></i><?php echo '  '.$row['location'];?></li>
      <li><i class="fa fa-ticket"></i><?php echo '  Tickets Available: '.$row['tickets_available'];?></li>
      <li> <i class="fa fa-money"></i><?php echo '  '.$row['price'].' EGP';?></li>
    </ul>
  </div>

<!-- Booking form -->
  <div class="col-md-6">
    <form method="post" action="book.php" autocomplete="off">

      <div class="form-group">
        <div class="input-group">
          <span class="input-group-addon"><span class="glyphicon glyphicon-shopping-cart"></span></span>
          <input type="number" name="tickets" class="form-control" value="" placeholder="Number Of Tickets. (5 Tickets Max.)" min="1" max="5" maxlength="2" />
        </div>
        <span class="text-danger"><?php echo $ticketsError; ?></span>
      </div>
      <input type="number" name="event_id" hidden value="<?php echo $eventid;?>">
      <input type="number" name="user_id" hidden value="<?php echo $_SESSION['user'];?>">

      <div class="form-group">
       <?php if (isset($_SESSION['user']) != '') {
         echo '<button type="submit" class="btn btn-block btn-primary" name="book">Book Now</button>';
       }?>
      </div>
    </form>
   <?php if (isset($_SESSION['user']) == '') {
     echo '<button class="btn btn-primary">Signup Now & Book</button>';
   }?>
<!-- Booking form End -->
    </div>
  </div>
