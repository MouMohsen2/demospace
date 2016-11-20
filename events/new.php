<?php
ob_start();
session_start();
require_once '../includes/config.php';
// if ( isset($_SESSION['user'])=="" ) {
//  header("Location: ../index.php");
//  exit;
// }
if (isset($_POST['submit'])) {
  try {
     //get inputs
    $title = $_POST['title'];
    $details = $_POST['details'];
    $location = $_POST['location'];
    $date = $_POST['date'];
    $tickets = $_POST['tickets'];

      //insert into database
    $stmt = $conn->prepare('INSERT INTO events (title,details,location,date,tickets_available) VALUES (:title, :details,:location,:date,:tickets)');
    $stmt->execute(array(
           ':title' => $title,
           ':details' => $details,
           ':location' => $location,
           ':date' => $date,
           ':tickets' => $tickets
       ));

       //redirect to index page
       header('Location: ../events/index-event.php?action=added');
      exit;
  } catch (PDOException $e) {
      echo $e->getMessage();
  }
}

    ?>

<!-- Create Post Form -->
<form action='' method='post'>

    <p>
      <label>Title</label><br />
      <input type='text' name='title'>
    </p>

    <p>
      <label>Details</label><br />
    <textarea name='details' cols='60' rows='10'>
    </textarea>
  </p>
  <label class="control-label">Date</label></td>
        <input class="input-group" type="date" name="date" />


    <p>
      <label>location</label><br />
      <input type='location' name='location'>
    </p>

    <span>
      <label>Tickets Available</label>
      <input type='number' name='tickets'>
    </span>

    <p>
      <button class="btn btn-primary" name="submit" type="submit" value='Submit'>Create Event</button>
    </p>
</form>

<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
<script>
tinymce.init({
  selector: "textarea",
  plugins: [
    "advlist autolink lists link image charmap print preview anchor",
    "searchreplace visualblocks code fullscreen",
    "insertdatetime media table contextmenu paste"
  ],
  toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
});
</script>
