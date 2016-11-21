<h1>Posts</h1>
<?php
try {
  // retrieve posts from Database
  $stmt = $conn->prepare('SELECT * FROM posts  INNER JOIN users ON users.user_id=posts.user_id; ORDER BY posts.timestamp DESC');
  $stmt->execute();
  $result = $stmt->fetchAll();
  echo '<table class="table">
        <thead>
        <tr>
        <th>Post Title</th>
        <th>Author</th>
        <th>Actions</th>
        </tr>
        </thead>
        <tbody>';
  foreach( $result as $row ) {
          echo '<tr>';
          echo '<td><a href="../posts/show.php?id='.$row['post_id'].'">'.$row['title'].'</a></td>';
          echo '<td><a href="../users/show.php?id='.$row['user_id'].'">'.$row['name'].'</a></td>';
          echo '<td><a href="../posts/detroy.php?id='.$row['post_id'].'">Delete</a></td>';
          echo '</tr>';
        }
      } catch (PDOException $e) {
              echo $e->getMessage();
          }
          ?>
