<?php
if (isset($_POST['submit']) && isset($_FILES['my_image'])) {
    echo "<pre>";
    print_r($_FILES['my_image']);
    echo "</pre>";

    $img_name = $_FILES['my_image']['name'];
    $size = $_FILES['my_image']['size'];
    $tmp_name = $_FILES['my_image']['tmp_name'];
    $error = $_FILES['my_image']['error'];

    if ($error === 0) {
        if ($size > 125000) {
            $em = "Sorry file is too much large";
            header("Location: uploaddoc.php?error=$em");
        } else {
            $img_ex = pathinfo($img_name, PATHINFO_EXTENSION);
            $img_ex_1c = strtolower($img_ex);

            $allowed_exs = array("jpg", "jpeg", "png");

            if (in_array($img_ex_1c, $allowed_exs)) {
            } else {
                $em = "you can't upload a file of this type";
                header("Location: uploaddoc.php?error=$em");
            }
        }
    } else {
        $em = "unknown error occurred";
        header("Location: uploaddoc.php?error=$em");
    }
} else {
    header("Location: uploaddoc.php");
}
