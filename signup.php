<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   $EmpId = $_POST['EmpId'];
   $FirstName = $_POST['FirstName'];
   $EmailId = $_POST['Emailid'];
   $Password = password_hash($_POST['Password'], PASSWORD_DEFAULT);
   $user_type = $_POST['user_type'];
   $sql = "INSERT INTO user_login(username,eid,email,password,user_type)VALUES('$username','$eid','$email','$password','$user_type')";
   if ($conn->query($sql) === TRUE) {
      echo "";
   } else {
      echo "Error:" . $sql . "<br>" . $conn->error;
   }
}
$conn->close();
?>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>register form</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>

<body>

   <div class="form-container">

      <form action="signup.php" method="post">
         <h3>register now</h3>
         <?php
         if (isset($error)) {
            foreach ($error as $error) {
               echo '<span class="error-msg">' . $error . '</span>';
            };
         };
         ?>
         <input type="text" name="EmpId" required placeholder="enter your id">
         <input type="text" name="FirstName" required placeholder="enter your FirstName">
         <input type="email" name="EmailId" required placeholder="enter your email">
         <input type="password" name="Password" required placeholder="enter your password">
         <select name="user_type">
            <option value="staff">Staff</option>
            <option value="HOD">HOD</option>
            <option value="Principal">Principal</option>
            <option value="admin">admin</option>
         </select>
         <input type="submit" name="submit" value="register now" class="form-btn">
         <p>already have an account? <a href="login_form.php">login now</a></p>
      </form>

   </div>

</body>

</html>