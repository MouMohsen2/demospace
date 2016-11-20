<?php
// make sure user not logged
if ( isset($_SESSION['user'])!="" ) {
 header("Location: ../index.php");
 exit;
}

 $error = false; // Init $error to false

 if( isset($_POST['btn-login']) ) {
   try {
  // inputs validation
  $email = trim($_POST['email']);
  $email = strip_tags($email);
  $email = htmlspecialchars($email);

  $password = trim($_POST['password']);
  $password = strip_tags($password);
  $password = htmlspecialchars($password);
// required inputs are not empty
  if(empty($email)){
   $error = true;
   $emailError = "Please enter your email address.";
  } else if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
   $error = true;
   $emailError = "Please enter valid email address.";
  }

  if(empty($password)){
   $error = true;
   $passError = "Please enter your password.";
  }

  // login if there is no error
  if (!$error) {
   $password = hash('sha256', $password); // encrypt password
   $stmt = $conn->prepare('SELECT * FROM users WHERE email = :email');
   $stmt->bindParam(':email', $email);
   $stmt->execute();
   $userRow=$stmt->fetch(PDO::FETCH_ASSOC);

   if ($stmt->rowCount() > 0 && $userRow['password']==$password) {
        $_SESSION['user'] = $userRow['user_id'];
        $_SESSION['admin'] = $userRow['admin'];
        $_SESSION['name'] = $userRow['name'];


    header("Location: ../index.php");
   } else {
    $errMSG = "Invalid Email or Password, Try again...";
   }
 } //end login
} //end try

 catch(PDOException $e){
         echo $e->getMessage();
     } //end catch
 } // End if isset
?>

<!-- Begin HTML -->
<div id="login-form">
    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="off">
     <div class="col-md-6">

       <div class="form-group">
         <h2 class="">Old friend? Sign In!</h2>
       </div>

       <div class="form-group">
         <hr />
       </div>

            <!-- Error handling -->
            <?php if ( isset($errMSG) ) { ?>
        <div class="form-group">
             <div class="alert alert-danger">
               <span class="glyphicon glyphicon-info-sign"></span> <?php echo $errMSG; ?>
                </div>
             </div>
            <?php } ?>
            <!-- End Error handling -->


            <!-- Begin inputs -->
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
            <input type="email" name="email" class="form-control" placeholder="Your Email" value="<?php echo $email; ?>" maxlength="40" />
          </div>
          <span class="text-danger"><?php echo $emailError; ?></span>
        </div>

        <div class="form-group">
          <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
            <input type="password" name="password" class="form-control" placeholder="Your Password" maxlength="15" />
          </div>
          <span class="text-danger"><?php echo $passError; ?></span>
        </div>

        <div class="form-group">
          <hr />
        </div>

        <div class="form-group">
          <button type="submit" class="btn btn-block btn-primary" name="btn-login">Sign In</button>
        </div>

      </div>   <!-- End col-md-6 -->
    </form>   <!-- End form -->
  </div>   <!-- End login-form -->
