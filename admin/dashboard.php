<?php include '../includes/navbar.php'; ?>

<div class="container" style="margin-top:100px;">
  <div class="row">
    <div class="col-md-3">
    </div>
    <div class="col-md-9">
      <?php
          try {
            // retrieve posts from Database
              $stmt = $conn->prepare('SELECT * FROM events INNER JOIN bookings ON events.event_id=bookings.event_id INNER JOIN users ON users.user_id=bookings.user_id;');
              $stmt->execute();
              $result = $stmt->fetchAll();
              echo '<table class="table">
              <thead>
              <tr>
              <th>Event Name</th>
              <th>User Name</th>
              <th>Number of Tickets</th>
              </tr>
              </thead>
              <tbody>';
              foreach( $result as $row ) {
                echo '<tr>';
                echo '<td><a href="../events/show.php?id='.$row['event_id'].'">'.$row['title'].'</a></td>';
                echo '<td><a href="../users/show.php?id='.$row['user_id'].'">'.$row['name'].'</a></td>';
                echo '<td>'.$row['tickets'].'</td>';
                echo '</tr>';
              }
            } catch (PDOException $e) {
                    echo $e->getMessage();
                }
        ?>

    </div>
  </div>
</div>
