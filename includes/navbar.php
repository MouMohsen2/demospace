<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Development Space | The Demo</title>
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Ubuntu:300,500,700%7CMerriweather:300i">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="../stylesheets/style.css">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
</head>

<?php  ob_start();
 session_start();
 include '../includes/config.php';
?>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">

    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" id="logo" href="../"><img src="../images/logo.png"></a>
    </div>

    <div class="collapse navbar-collapse" id="navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <!-- <li id="testimonial-btn" ><a href="#">Testimonial</a></li>
        <li id="map-btn" ><a href="#">Reach Us!</a></li> -->

        <!-- <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $_SESSION['name'];?><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li role="separator" class="divider"></li>

          </ul>
        </li> -->
        <?php if ($_SESSION['user'] != '' && $_SESSION['admin'] == 1){
        echo '<li><a href="../admin/dashboard.php">Admin Panel</a></li>';}
        ?>
        <li><a href="../events">Events</a></li>
        <li><a href="../posts">Blog</a></li>
        <?php if (isset($_SESSION['user']) != '') {
          echo '<li><a href="../users/show.php?id='.$_SESSION['user'].'">'.$_SESSION['name'].'</a></li>';
          echo '<li><a href="../users/logout.php?logout">Sign Out</a></li>';
          } else {
          echo '<li><a href="../users/members.php">Members</a></li>';
        }?>

      </ul>
    </div>

  </div>
</nav>
