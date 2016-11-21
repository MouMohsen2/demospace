<?php
include '../includes/config.php';
$id = $_GET['id'];
$sql = 'DELETE FROM posts WHERE post_id='.$id;
// use exec() because no results are returned
$conn->exec($sql);
header('Location: ./');

?>
