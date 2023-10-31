<?php
$conn = new mysqli("localhost", "root", "", "establishment_section");
if (mysqli_connect_errno()) {
    // echo "Failed to connect toMySQL:" .mysqli_connect_error();
    die("Connection failed:" . $conn->connect_error);
}