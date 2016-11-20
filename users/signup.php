<?php
// make sure user not logged
if ( isset($_SESSION['user'])!="" ) {
 header("Location: ../index.php");
 exit;
}

$error = false; // Init $error to false

if (isset($_POST['btn-signup'])) {
  try {
    // inputs validation
    $name = trim($_POST['name']);
    $name = strip_tags($name);
    $name = htmlspecialchars($name);

    $email = trim($_POST['email']);
    $email = strip_tags($email);
    $email = htmlspecialchars($email);

    $password = trim($_POST['password']);
    $password = strip_tags($password);
    $password = htmlspecialchars($password);

    $phone = trim($_POST['phone']);
    $phone = strip_tags($phone);
    $phone = htmlspecialchars($phone);

    $address = trim($_POST['address']);
    $address = strip_tags($address);
    $address = htmlspecialchars($address);

    // Name validation
    if (empty($name)) {
      $error = true;
      $nameError = 'Please enter your full name.';
  } elseif (strlen($name) < 3) {
      $error = true;
      $nameError = 'Name must have atleat 3 characters.';
  } elseif (!preg_match('/^[a-zA-Z ]+$/', $name)) {
      $error = true;
      $nameError = 'Name must contain alphabets and space.';
    }

  // Email validation
  if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $error = true;
      $emailError = 'Please enter valid email address.';
  } else {
      // check email exist or not
   $stmt = $conn->prepare('SELECT email FROM users WHERE email = :email');
   $stmt->bindParam(':email', $email);
   $stmt->execute();

   if ($stmt->rowCount() > 0) {
     $emailError = "Email Address is already exist";
     $error = true;
   }
 }

  // password validation
  if (empty($password)) {
      $error = true;
      $passwordError = 'Please enter password.';
  } elseif (strlen($password) < 6) {
      $error = true;
      $passwordError = 'password must have atleast 6 characters.';
  }

  // password encryption
  $password = hash('sha256', $password);

  // Signup if there is no error
  if (!$error) {
      $stmt = $conn->prepare('INSERT INTO users (name,email,password,phone,address) VALUES (:name,:email, :password,:phone,:address)');
      $stmt->execute(array(
        ':name' => $name,
        ':email' => $email,
        ':password' => $password,
        ':phone' => $phone,
        ':address' => $address
      ));

      if ($stmt) {
          $errTyp = 'success';
          $errMSG = 'Successfully registered, you may login now';
          unset($name);
          unset($email);
          unset($password);
      } else {
          $errTyp = 'danger';
          $errMSG = 'Something went wrong, try again later...';
      }
  }
     } catch (PDOException $e) {
         echo $e->getMessage();
     }
 }
?>

<!-- Begin HTML -->
<div id="login-form">
  <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="off">
    <div class="col-md-6">

      <div class="form-group">
        <h2 class="">New User? Join Us!</h2>
      </div>

      <div class="form-group">
        <hr />
      </div>

      <!-- Error handling -->
      <?php if (isset($errMSG)) { ?>
        <div class="form-group">
          <div class="alert alert-<?php echo ($errTyp == 'success') ? 'success' : $errTyp; ?>">
            <span class="glyphicon glyphicon-info-sign"></span> <?php echo $errMSG; ?>
          </div>
        </div>
      <?php } ?>
      <!-- End Error handling -->

      <div class="form-group">
        <div class="input-group">
          <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
          <input type="text" name="name" class="form-control" placeholder="Enter Name" maxlength="50" value="<?php echo $name ?>" required />
        </div>
        <span class="text-danger"><?php echo $nameError; ?></span>
      </div>

      <div class="form-group">
        <div class="input-group">
          <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
          <input type="email" name="email" class="form-control" placeholder="Enter Your Email" maxlength="40" value="<?php echo $email ?>" required />
        </div>
        <span class="text-danger"><?php echo $emailError; ?></span>
      </div>

      <div class="form-group">
        <div class="input-group">
          <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
          <input type="password" name="password" class="form-control" placeholder="Enter password" maxlength="15" required/>
        </div>
        <span class="text-danger"><?php echo $passwordError; ?></span>
      </div>

      <div class="form-group">
        <hr />
      </div>

      <div class="form-group">
        <div class="input-group">
          <span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
          <input type="tel" name="phone" class="form-control" placeholder="Phone Number" maxlength="50" value="<?php echo $phone ?>" />
        </div>
        <span class="text-danger"><?php echo $phoneError; ?></span>
      </div>

      <div class="form-group">
        <div class="input-group">
          <span class="input-group-addon"><span class="glyphicon glyphicon-home"></span></span>
          <input type="text" name="address" class="form-control" placeholder="Enter Address" maxlength="50" value="<?php echo $address ?>" />
        </div>
        <span class="text-danger"><?php echo $address; ?></span>
      </div>

      <div class="form-group">
        <hr />
      </div>

      <div class="form-group">
        <button type="submit" class="btn btn-block btn-primary" name="btn-signup">Sign Up</button>
      </div>

    </div>
  </form>
</div>
