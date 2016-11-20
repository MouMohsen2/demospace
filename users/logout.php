<?php
 session_start();


 if (isset($_GET['logout'])) {
  unset($_SESSION['user']);
  unset($_SESSION['admin']);
  unset($_SESSION['name']);

  session_unset();
  session_destroy();
  header("Location: ../index.php");
  exit;
 }
 ?>
 <li><a href="logout.php?logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li>
