<?php # CONNECT TO MySQL DATABASE.
#include ('includes/nav.php');

# Open database connection.
	##require ( 'connect_db.php' );
# Connect/Link  on 'localhost' .
$link = mysqli_connect('localhost','root','','CodeSpace'); 
  if (!$link) { 
# Otherwise fail gracefully and explain the error. 
  die('Could not connect to MySQL: ' . mysqli_error()); 
} 
  echo 'Connected to the database successfully!';  
?> 


