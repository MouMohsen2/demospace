<?php include '../includes/navbar.php';?>

<div class="container text-center" style="max-width:70%; margin:0 auto; margin-top:70px;">
<!-- Show User -->
  <?php
  $user_id = $_GET['id'];
  $stmt = $conn->prepare('SELECT * FROM users WHERE user_id = :id');
  $stmt->execute(array(':id' => $user_id ));
  $row = $stmt->fetch();
  echo '<div class="jumbotron">';
  echo '<h2>'.$row['name'].'</h2>';
  echo '<h3>'.$row['email'].'</h3>';
  echo '<hr></hr>';
  echo '<p>'.$row['address'].'</p>';
  echo '<p>0'.$row['phone'].'</p>';
  echo '</div>';

  if($row['user_id'] == ''){
      header('Location: ./');
      exit;
    }
  echo '<h1>Booked Events</h1>';
  echo '<hr></hr>';
// Booked Events
  $stmt = $conn->prepare('SELECT events.event_id,events.title, events.location, events.date, bookings.tickets FROM events, bookings WHERE events.event_id=bookings.event_id AND bookings.user_id = :id;');
  $stmt->execute(array(':id' => $user_id));
  $result = $stmt->fetchAll();
  echo '<table class="table">
  <thead>
  <tr>
  <th>Event Name</th>
  <th>Location</th>
  <th>Date</th>
  <th>Booked Tickets</th>
  </tr>
  </thead>
  <tbody>';
  foreach( $result as $row ) {
    echo '<tr>';
    echo '<td><a href="../events/show.php?id='.$row['event_id'].'">'.$row['title'].'</a></td>';
    echo '<td>'.$row['location'].'</td>';
    echo '<td>'.$row['date'].'</td>';
    echo '<td>'.$row['tickets'].'</td>';

    echo '</tr>';
  }
  ?>

</div>
