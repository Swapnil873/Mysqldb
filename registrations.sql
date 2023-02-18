<?php
$servername = "localhost";
$username = "username";
$password = "password";

$conn = new mysqli($servername, $username, $password);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "CREATE DATABASE Register";
if ($conn->query($sql) === TRUE) {
  echo "Database created successfully";
} else {
  echo "Error creating database: " . $conn->error;
}

$sql = "CREATE TABLE Resgistrations (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Eventname VARCHAR(30) NOT NULL,
Name VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL,
phno VARCHAR(10) NOT NULL,
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)";
if (mysqli_query($conn, $sql)) {
  echo "Table MyGuests created successfully";
} else {
  echo "Error creating table: " . mysqli_error($conn);
}

if(isset($_POST['']))
{	 
	 $Eventname = $_POST['Eventname'];
	 $Name = $_POST['Name'];
	 $email = $_POST['email'];
	 $phno = $_POST['phno'];
	 $reg_date = $_POST['reg_date'];
	 $sql = "INSERT INTO Registrations (Eventname,Name,email,phno,reg_date)
	 VALUES ('$Eventname','$Name','$email','$phno','$reg_date')";
	 if (mysqli_query($conn, $sql)) {
		echo "New record created successfully !";
	 } else {
		echo "Error: " . $sql . "
		" . mysqli_error($conn);
	 }
	 
$sql = "DELETE FROM Registrations WHERE id='" . $_GET[""] . "'";
if (mysqli_query($conn, $sql)) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . mysqli_error($conn);
}
$conn->close();
?>
