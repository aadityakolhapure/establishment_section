<?php

@include '../includes/config.php';

if (isset($_POST['submit'])) {

    $name = mysqli_real_escape_string($conn, $_POST['fullname']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $pass = md5($_POST['password']);

    $select = " SELECT * FROM admin WHERE email = '$email' && password = '$password' ";

    $result = mysqli_query($conn, $select);

    if (mysqli_num_rows($result) > 0) {

        $error[] = 'user already exist!';
    } else {

        if ($pass != $cpass) {
            $error[] = 'password not matched!';
        } else {
            $insert = "INSERT INTO admin(fullname,email,Password,UserName) VALUES(:fullname,:email,:password,:username)";
            mysqli_query($conn, $insert);
            header('location:index.php');
        }
    }
};


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>register form</title>

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../assets/css/design12.css">

</head>

<body>

    <div class="form-container">

        <form action="signup1.php" method="post">
            <h3>register now</h3>
            <?php
            if (isset($error)) {
                foreach ($error as $error) {
                    echo '<span class="error-msg">' . $error . '</span>';
                };
            };
            ?>
            <input type="text" name="fullname" required placeholder="enter your name">
            <input type="email" name="email" required placeholder="enter your email">
            <input type="email" name="username" required placeholder="enter your username">
            <input type="password" name="password" required placeholder="enter your password">
            <input type="submit" name="submit" value="register now" class="form-btn">
            <p>already have an account? <a href="index.php">login now</a></p>
        </form>

    </div>

</body>

</html>