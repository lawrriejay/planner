<?php
require "connection.php";

if($_SERVER['REQUEST_METHOD'] == "POST")
	{
        $Full_Name = addslashes($_POST['name']);
        $Phone = addslashes($_POST['phone']);
        $email = addslashes($_POST['email']);
        $guests = addslashes($_POST['guests']);
        $date = addslashes($_POST['date']);
        $time = addslashes($_POST['time']);
        $message = addslashes($_POST['message']);


		$query = "INSERT INTO reservation (Full_Name,Phone,email,guests,date,time,message) values ('$Full_Name','$Phone','$email',	'$guests','$date','$time','$message')";

		$result = mysqli_query($data,$query);
        

		header("Location: index.html");
		die;
	}
 

?>