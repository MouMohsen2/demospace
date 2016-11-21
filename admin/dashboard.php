<?php include '../includes/navbar.php';
if ($_SESSION['user'] == '' && $_SESSION['admin'] != 1){
 header("Location: ../index.php");
 exit;
}
 ?>

<div class="container-fluid" style="margin-top:100px;">
  <div class="col-sm-3 col-md-2 sidebar">
    <ul class="nav nav-sidebar">
      <li><a href="../admin/dashboard.php?p=bookings">Bookings</a></li>
      <li><a href="../admin/dashboard.php?p=events">Events</a></li>
      <li><a href="../admin/dashboard.php?p=posts">Posts</a></li>
      <li><a href="../admin/dashboard.php?p=users">Users</a></li>
    </ul>
  </div>

  <div class="col-md-9">
    <?php
    if ( isset($_GET['p']) && $_GET['p']=="bookings") {
      include('../admin/bookings.php');
    } elseif (isset($_GET['p']) && $_GET['p']=="events") {
      include('../admin/events.php');
    }elseif (isset($_GET['p']) && $_GET['p']=="posts") {
      include('../admin/posts.php');
    }elseif (isset($_GET['p']) && $_GET['p']=="users") {
      include('../admin/users.php');
    } else {
        }
        ?>
        <div class="jumbotron text-center">
          <h1>Admin Panel<h1>
          <h3>Use Navigation on the right</h3>
        </div>
      </div>
    </div>
