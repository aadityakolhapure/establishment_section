<?php
$conn = new mysqli("localhost", "root", "", "copy");
if (mysqli_connect_errno()) {
    // echo "Failed to connect toMySQL:" .mysqli_connect_error();
    die("Connection failed:" . $conn->connect_error);
}