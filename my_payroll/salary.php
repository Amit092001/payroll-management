<html>
<head>

</head>
<body>
<?php 
if(isset($_POST['eid']))
{
    include('connection.php'); 
    $peid=$_POST['eid'];

    $sql = mysqli_query($con,"SELECT * FROM employee,egrade where employee.eid=$peid and employee.eid=egrade.eid;");


    echo '<h1>Employee details</h1>
    <ol>';


        while ($row = mysqli_fetch_array($sql))
        {
            $lname= $row['lname'];
            $fname = $row['fname'];
            $gender = $row['gender'];
            $eid  = $row['eid'];
            $email = $row['email'];
            $phone  = $row['phone'];
            $department   = $row['department'];
            $yoe   = $row['yoe'];
            $grade   = $row['grade'];


            $sql1 = mysqli_query($con,"SELECT salary FROM salary where grade like '$grade';");

            $row1 = mysqli_fetch_array($sql1);
            $salary   = $row1['salary'];


            

            echo '<li>Employee Name = '.$fname.' '.$lname.'</li>
            <li>Employee salary = '.$salary.'</li> 
        <li>Employee gender =' .$gender.'</li> 
            <li>Employee id =  '.$eid.'</li> 
            <li>Employee Email = '.$email.'</li> 
            <li>Employee phone = '.$phone.'</li>
            <li>Employee department = '.$department.'</li> 
            <li>Employee year of Experience = '.$yoe.'</li> 
            <li>Employee grade = '.$grade.'</li>
            <li>Employee phone = '.$phone.'</li>
            </ol>';
        }
}
    

?>
</body>
</html>