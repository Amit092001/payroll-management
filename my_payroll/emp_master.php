<?php
$insert = false;
if(isset($_POST['fname'])){
    // Set connection variables
    $server = "localhost";
    $username = "root";
    $password = "";

    // Create a database connection
    $con = mysqli_connect($server, $username, $password);

    // Check for connection success
    if(!$con){
        die("connection to this database failed due to" . mysqli_connect_error());
    }
    // echo "Success connecting to the db";

    // Collect post variables
    
    $lname= $_POST['lname'];
    $fname = $_POST['fname'];
    $gender = $_POST['gender'];
    $eid  = $_POST['eid'];
    $email = $_POST['email'];
    $phone  = $_POST['phone'];
    $department   = $_POST['department'];
    $yoe   = $_POST['yoe'];
    
    $sql="INSERT INTO `my_payroll`.`employee` (`fname`, `lname`, `gender`, `eid`, `email`, `phone`, `department`, `yoe`) VALUES('$fname','$lname','$gender', '$eid', '$email','$phone','$department','$yoe');";
    // echo $sql;

    // Execute the query
    if($con->query($sql) == true){
        echo "Successfully inserted";
        header('location:' .'f1.php');
        // Flag for successful insertion
        $insert = true;
    }
    else{
        echo "ERROR: $sql <br> $con->error";
    }

    // Close the database connection
    $con->close();
}
?>