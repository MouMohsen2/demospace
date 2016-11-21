<?php
ob_start();
session_start();
require_once '../includes/config.php';

if (isset($_POST['submit'])) {
  try {
     //get inputs
    $title = $_POST['title'];
    $details = $_POST['details'];
    $location = $_POST['location'];
    $date = $_POST['date'];
    $tickets = $_POST['tickets'];
    $price = $_POST['price'];


      //insert into database
    $stmt = $conn->prepare('INSERT INTO events (title,details,location,date,tickets_available,price) VALUES (:title, :details,:location,:date,:tickets,:price)');
    $stmt->execute(array(
           ':title' => $title,
           ':details' => $details,
           ':location' => $location,
           ':date' => $date,
           ':tickets' => $tickets,
           ':price' => $price
       ));

       //redirect to index page
       header('Location: ../events/index.php?action=added');
      exit;
  } catch (PDOException $e) {
      echo $e->getMessage();
  }
}

    ?>

<!-- Create Post Form -->
<form action='' method='post'>

    <div class="form-group">
      <div class="input-group">
        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
        <input type="text" name="title" class="form-control" placeholder="Event Title" value="<?php echo $title; ?>" maxlength="90" />
      </div>
      <span class="text-danger"><?php echo $titleError; ?></span>
    </div>

    <div class="form-group">
      <div class="input-group">
        <textarea name="details" cols='60' rows='10' class="form-control" placeholder="Content goes here .." value="<?php echo $details; ?>"></textarea>
      </div>
      <span class="text-danger"><?php echo $details; ?></span>
    </div>

    <div class="form-group">
      <div class="input-group">
        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
        <input type="date" name="date" class="form-control" value="<?php echo $date; ?>" />
      </div>
      <span class="text-danger"><?php echo $dateError; ?></span>
    </div>

    <div class="form-group">
      <div class="input-group">
        <span class="input-group-addon"><span class="glyphicon glyphicon-tent"></span></span>
        <input type="text" name="location" class="form-control" placeholder="Enter Location" value="<?php echo $location; ?>" />
      </div>
      <span class="text-danger"><?php echo $locationError; ?></span>
    </div>

    <div class="form-group">
      <div class="input-group">
        <span class="input-group-addon"><span class="glyphicon glyphicon-tags"></span></span>
        <input type="text" name="tickets" class="form-control" placeholder="Tickets Available" value="<?php echo $tickets; ?>" />
      </div>
      <span class="text-danger"><?php echo $ticketsError; ?></span>
    </div>

    <div class="form-group">
      <div class="input-group">
        <span class="input-group-addon"><span class="glyphicon glyphicon-euro"></span></span>
        <input type="text" name="price" class="form-control" placeholder="price" value="<?php echo $price; ?>" />
      </div>
      <span class="text-danger"><?php echo $oriceError; ?></span>
    </div>

    <div class="form-group">
      <button type="submit" class="btn btn-block btn-primary" name="submit">Add Event</button>
    </div>
</form>

<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
<script>
$(document).on('focusin', function(e) {
    if ($(event.target).closest(".mce-window").length) {
        e.stopImmediatePropagation();
    }
});
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
