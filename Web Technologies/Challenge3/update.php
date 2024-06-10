<?php
# Include navigation 
include ( 'includes/nav.php' ) ;

if ( $_SERVER[ 'REQUEST_METHOD' ] == 'POST' )
{
  # Connect to the database.
  require ('connect_db.php'); 
  
  # Initialize an error array.
  $errors = array();

# Check for a item name.
  if ( empty( $_POST[ 'item_id' ] ) )
  { $errors[] = 'Update item ID.' ; }
  else
  { $id = mysqli_real_escape_string( $link, trim( $_POST[ 'item_id' ] ) ) ; }
  
  # Check for a item name.
  if ( empty( $_POST[ 'item_name' ] ) )
  { $errors[] = 'Update item name.' ; }
  else
  { $n = mysqli_real_escape_string( $link, trim( $_POST[ 'item_name' ] ) ) ; }

  # Check for a item description.
  if (empty( $_POST[ 'item_desc' ] ) )
  { $errors[] = 'Update item description.' ; }
  else
  { $d = mysqli_real_escape_string( $link, trim( $_POST[ 'item_desc' ] ) ) ; }

# Check for a item price.
  if (empty( $_POST[ 'item_img' ] ) )
  { $errors[] = 'Update image address.' ; }
  else
  { $img = mysqli_real_escape_string( $link, trim( $_POST[ 'item_img' ] ) ) ; }
  
  # Check for a item price.
  if (empty( $_POST[ 'item_price' ] ) )
  { $errors[] = 'Update item price.' ; }
  else
  { $p = mysqli_real_escape_string( $link, trim( $_POST[ 'item_price' ] ) ) ; }
  if ( empty( $errors ) ) 
  {
    $q = "UPDATE products SET item_id='$id',item_name='$n', item_desc='$d', item_img='$img', item_price='$p'  WHERE item_id='$id'";
    $r = @mysqli_query ( $link, $q ) ;
    if ($r)
    {
       header("Location: read.php");
    } else {
        echo "Error updating record: " . $link->error;
    }
    # Close database connection.
    mysqli_close( $link );
    exit();
  } 
  # Or report errors.
  else
  {
    echo '
    <script type ="text/JavaScript">
    alter("' ;
    foreach ($errors as $msg)
    { echo "$msg " ; }
    echo 'Please try again.")</script>';
     # Close database connection.
     mysqli_close( $link );

    
  }
  
}

?>
<div class="container">
<h1>Update Record</h1>
	<form action="update.php" method="post" >
    <div class="form-group">
	  <!-- input box for item name  -->
	  <label for="item-name">Update Item ID</label>
	  <input type="text" 
	  name="item_id" 
	  class="form-control" 
	  value="<?php if (isset($_POST['item_name'])) echo $_POST['item_name']; ?> ">
</div>
<div class="form-group">
	  <!-- name  -->
	  <label for="item-name">Update Item Name</label>
	  <input type="text" 
	  name="item_name" 
	  class="form-control" 
	  value="<?php if (isset($_POST['item_name'])) echo $_POST['item_name']; ?> ">
</div>
<div class="form-group">
	  <!-- input box for item description -->  
	  <label for="description">Description:</label>
	  <textarea id="item_desc" 
	  class="form-control" 
	  name="item_desc" 
	  required value="<?php if (isset($_POST['item_desc'])) echo $_POST['item_desc']; ?>">
	  </textarea>
</div>
	 <!-- input box for image path -->
   <div class="form-group">
	 <label for="item-image">Update Item Image:</label>
	 <input type="text" 
	 class="form-control" 
	 name="item_img"  
	 value="<?php if (isset($_POST['item_img'])) echo $_POST['item_img']; ?>">
	 </div>
	 <!-- input box for item price -->
   <div class="form-group">
	 <label for="item_desc">Update Item Price:</label>
	 <input 
	 type="text" 
	 class="form-control" 
	 name="item_price" 
	 value="<?php if (isset($_POST['item_price'])) echo $_POST['item_price']; ?>"><br>
   </div>
	  <!-- submit button -->
     <input type="submit" class="btn btn-dark" value="Update Record">
	</form>
</div>
<!--  Setting Up Create Record - Step2 Next, add an include statement that will
 fetch and read the file nav.php (stored in the includes folder). -->


<!-- Step 3
Now add the script that will include the footer of the page. -->

<?php
 include 'includes/footer.php';
?>