<?php
require "connection.php";

if($_SERVER['REQUEST_METHOD'] == "POST")
	{
        $Full_Name = addslashes($_POST['name']);
        $email = addslashes($_POST['email']);
        $phone = addslashes($_POST['phone']);
        $budget = addslashes($_POST['budget']);
        $guests = addslashes($_POST['guests']);
        $date = addslashes($_POST['date']);
        $package = addslashes($_POST['package']);
        $details = addslashes($_POST['details']);
        $message = addslashes($_POST['message']);


		$query = "INSERT INTO `quotation`( `Full_Name`, `email`, `phone`, `budget`, `guests`, `date`, `package`, `details`, `message`) VALUES ('$Full_Name','$email','$phone','$budget','$guests','$date','$package','$details','$message')";

		$result = mysqli_query($data,$query);
        

		header("Location: quotation.html");
		die;
	}
 
    
?>