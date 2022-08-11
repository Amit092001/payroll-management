<?php

if(isset($_POST['eid'])){
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
    
    $eid= $_POST['eid'];
    $grade = $_POST['grade'];
    
    
    $sql="INSERT INTO `my_payroll`.`egrade` (`eid`, `grade`) VALUES('$eid','$grade');";
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