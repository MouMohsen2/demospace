<?php
ob_start();
session_start();
require_once '../includes/config.php';

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

        <div class="form-group">
          <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
            <input type="text" name="title" class="form-control" placeholder="Post Title" value="<?php echo $title; ?>" maxlength="80" />
          </div>
          <span class="text-danger"><?php echo $titleError; ?></span>
        </div>

        <div class="form-group">
          <div class="input-group">
            <textarea name="content" cols='60' rows='10' class="form-control" placeholder="Content goes here .." value="<?php echo $content; ?>"></textarea>
          </div>
          <span class="text-danger"><?php echo $content; ?></span>
        </div>

        <div class="form-group">
          <button type="submit" class="btn btn-block btn-primary" name="submit">Add post</button>
        </div>
    </form>

<!-- Replace Text Area With tinyMCE editor -->
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
