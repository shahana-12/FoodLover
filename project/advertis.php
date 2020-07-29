
<?php
include 'session.php';
include 'header2.php';


$connection = mysqli_connect('localhost','root','','project');


if(isset($_POST['submit'])){
    $name = $_POST['rname'];
    $address = $_POST['address'];
    $email = $_POST['email'];
    $fname = $_POST['fname'];
    $price = $_POST['price'];
    $file = addcslashes(file_get_contents($_FILES['image'] ['tmp_name']));

    $query = " INSERT INTO 'advertise' (restaurant_name, Address,  Email, food_name, price, image) values('$name' ,'$address','$email','$fname','$price','$file') ";

    $query_run = mysqli_query($connection, $query);
    if ($query_run) {
       echo "food uploaded";
    } else {
        echo "food not uploaded";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>FoodLover</title>
	<link rel="sortcut icon" type="image/png" href="image/icon.png">
	<link rel="stylesheet" type="text/css" href="css/advertis.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<form action="" method="POST" enctype="multipart/form-data">
    	<label for="rname">Resturent Name:</label><br>
    	<input type="text" id="rname" name="rname" placeholder="resturent name"><br><br>
    	<label for="address">Address:</label><br>
    	<input type="text" id="address" name="address" placeholder="address"><br><br>
    	<label for="email">Email:</label><br>
    	<input type="email" id="email" name="email" placeholder="email"><br><br>
    	<label for="fname">Food Name:</label><br>
    	<input type="text" id="fname" name="fname" placeholder="food name"><br><br>
    	<label for="price">Price:</label><br>
    	<input type="text" id="price" name="price" placeholder="price"><br><br>
        <label for="image">Food Image:</label><br>
        <input style="color: white;" type="file" id="image" name="image"><br><br>
    	<input type="submit" value="Submit" name="submit">
	</form>	
</div>
<?php
include 'footer.php';
?>
</body>
</html>