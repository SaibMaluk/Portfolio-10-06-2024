
<?php
require ( 'connect_db.php' );
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["login"])) {
        $logEmail = $_POST["log_email"];
        $logPassword = $_POST["log_pass"];
        $sqlCheck = " SELECT pass FROM users WHERE email = ?";
        $stmt = mysqli_prepare($link, $sqlCheck);
        mysqli_stmt_bind_param($stmt, "s", $logEmail);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_bind_result($stmt, $password);
        mysqli_stmt_fetch($stmt);
        mysqli_stmt_close($stmt);
        if ($logPassword === $password) {
            header("Location:products.php");
            exit;
        } else {
            echo ' <div class="alert alert-danger mt-4 position-absolute top-0 start-50 translate-middle-x" role="alert">
               logpassword:' . $logPassword . ',password:' . $password . '</div>';
        }
    }
}
?>
<form action="" method="post">
  <label for="inputemail">Email</label>
  <input type="text" 
		 name="log_email" 
		 class="form-control" 
		 required 
		 placeholder="* Enter Email"> 
		
  <input type="password" 
		 name="log_pass"  
	     class="form-control" 
		 required 
	     placeholder="* Enter Password">
		
  <input type="submit" value="Login" name="login">
</form><!-- closing form -->

