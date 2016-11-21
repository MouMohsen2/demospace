<h1>Users</h1>
<?php
try {
  // retrieve Users from Database
  $stmt = $conn->prepare('SELECT * FROM users');
  $stmt->execute();
  $result = $stmt->fetchAll();
  echo '<table class="table">
        <thead>
        <tr>
        <th>User Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Address</th>
        <th>Admin</th>
        </tr>
        </thead>
        <tbody>';
  foreach( $result as $row ) {
    echo '<tr>';
    echo '<td><a href="../users/show.php?id='.$row['user_id'].'">'.$row['name'].'</a></td>';
    echo '<td>'.$row['email'].'</td>';
    echo '<td>'.$row['phone'].'</td>';
    echo '<td>'.$row['address'].'</td>';
    if ($row['admin']==1){
      echo '<td>Yes</td>';
    } else {
      echo '<td>No</td>';
    }
          echo '</tr>';
        }
      } catch (PDOException $e) {
              echo $e->getMessage();
          }
          ?>
