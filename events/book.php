<?php
include '../includes/config.php';

if (isset($_POST['book'])) {
  try {
    $error = false;
     //get inputs
     $user_id = $_POST['user_id'];
     $event_id = $_POST['event_id'];
     $tickets = $_POST['tickets'];

     $stmt = $conn->prepare('SELECT * FROM events WHERE event_id = :event_id');
     $stmt->bindParam(':event_id', $event_id);
     $stmt->execute();
     $row=$stmt->fetch(PDO::FETCH_ASSOC);

     if ($row['tickets_available'] < $tickets) {
       header('Location: ../events/error.php');
       $error = true;
     }

     if (!$error) {
    $stmt = 'UPDATE events SET tickets_available = tickets_available - :tickets WHERE ( event_id = :event_id )';
    $stmt = $conn->prepare( $stmt );
    $stmt->execute(array(':event_id' => $event_id,':tickets' => $tickets));

    $stmt = $conn->prepare('INSERT INTO bookings (user_id,event_id,tickets) VALUES (:user_id,:event_id,:tickets)');
    $stmt->execute(array(
        ':user_id' => $user_id,
        ':event_id' => $event_id,
        ':tickets' => $tickets
    ));
    header('Location: ../events/confirmation.php?action=added');
} else {
  header('Location: ../events/error.php');
}

  } catch (PDOException $e) {
      echo $e->getMessage();
  }
}
?>
