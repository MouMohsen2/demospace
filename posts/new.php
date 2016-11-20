<?php
ob_start();
session_start();
require_once '../includes/config.php';
if ( isset($_SESSION['user'])=="" ) {
 header("Location: ../index.php");
 exit;
}
if (isset($_POST['submit'])) { //check if form was submitted
  try {
      $title = $_POST['title']; //get input text
    $content = $_POST['content'];
    $id = $_SESSION['user'];

       //insert into database
       $stmt = $conn->prepare('INSERT INTO posts (title,content,user_id,photo) VALUES (:title, :content,:id,:photo)');
      $stmt->execute(array(
           ':title' => $title,
           ':content' => $content,
           ':id' => $id,
           ':photo' => $uploadfile

       ));

       //redirect to index page
       header('Location: index.php?action=added');
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
      <label>Description</label><br />
    <textarea name='content' cols='60' rows='10'>
    </textarea>
  </p>
  <label class="control-label">Profile Img.</label></td>
        <input class="input-group" type="file" name="user_image" accept="image/*" />

    <p>
      <input type='submit' name='submit' value='Submit'>
    </p>

</form>

<!-- Replace Text Area With tinyMCE editor -->
<script src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
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
