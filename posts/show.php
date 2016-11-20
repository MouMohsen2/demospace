<?php
include '../includes/navbar.php';?>

<div class="content text-center" style="max-width:70%; margin:0 auto; margin-top:70px;">
<?php

$stmt = $conn->prepare('SELECT post_id, title, content, timestamp FROM posts WHERE post_id = :id');
$stmt->execute(array(':id' => $_GET['id']));
$row = $stmt->fetch();

echo '<div>';
    echo '<h1 class="test">'.$row['title'].'</h1>';
    echo '<p>Posted on '.date('jS M Y', strtotime($row['timestamp'])).'</p>';
    echo '<hr></hr>';
    echo '<p>'.$row['content'].'</p>';

echo '</div>';

if($row['post_id'] == ''){
    header('Location: ./');
    exit;
}

?>

</div>
