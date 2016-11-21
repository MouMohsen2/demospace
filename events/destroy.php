<?php
  include '../includes/config.php';
  $id = $_GET['id'];
  $sql = 'DELETE FROM events WHERE event_id='.$id;
  $conn->exec($sql);
  header('Location: ./');
?>
