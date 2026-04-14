<?php
require "connection.php";

if($_SERVER['REQUEST_METHOD'] == "POST")
	{
        
        $email = addslashes($_POST['email']);
        $date = date('Y-m-d H:i:s');
        


		$query = "INSERT INTO `subscription`( `email`,`date`) VALUES ('$email','$date')";
		$result = mysqli_query($data,$query);
        

		header("Location: index.html");
		die;
	}
 

?>