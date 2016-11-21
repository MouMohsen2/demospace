<h1>Events</h1>
<?php
try {
  // retrieve events from Database
  $stmt = $conn->prepare('SELECT * FROM events');
  $stmt->execute();
  $result = $stmt->fetchAll();
  echo '<table class="table">
        <thead>
        <tr>
        <th>Event Title</th>
        <th>Location</th>
        <th>Date</th>
        <th>Tickets Available</th>
        <th>Price</th>
        <th>Actions</th>
        </tr>
        </thead>
        <tbody>';
    foreach( $result as $row ) {
          echo '<tr>';
          echo '<td><a href="../events/show.php?id='.$row['event_id'].'">'.$row['title'].'</a></td>';
          echo '<td>'.$row['location'].'</td>';
          echo '<td>'.$row['date'].'</td>';
          echo '<td>'.$row['tickets_available'].'</td>';
          echo '<td>'.$row['price'].'</td>';
          echo '<td><a href="../events/detroy.php?id='.$row['event_id'].'">Delete</a></td>';
          echo '</tr>';
        }
      } catch (PDOException $e) {
              echo $e->getMessage();
          }
  ?>
