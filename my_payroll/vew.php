<html>
<head>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>
<?php 
include('connection.php');  
$sql = mysqli_query($con,"SELECT * from employee ");


echo '<table border="0" cellspacing="2" cellpadding="2"> 
      <tr> 
          <th> <font face="Arial">first name </font> </th> 
          <th> <font face="Arial">last name </font> </th> 
          <th> <font face="Arial">gender</font> </th> 
          <th> <font face="Arial">employee id</font> </th> 
          <th> <font face="Arial">email</font> </th> 
          <th> <font face="Arial">phone</font> </th> 
          <th> <font face="Arial">department</font> </th> 
          <th> <font face="Arial">year of experience</font> </th> 
      </tr>';


    while ($row = mysqli_fetch_array($sql)) {
        $lname= $row['lname'];
        $fname = $row['fname'];
        $gender = $row['gender'];
        $eid  = $row['eid'];
        $email = $row['email'];
        $phone  = $row['phone'];
        $department   = $row['department'];
        $yoe   = $row['yoe'];

        echo '<tr> 
                  <td>'.$fname.'</td> 
                  <td>'.$lname.'</td> 
                  <td>'.$gender.'</td> 
                  <td>'.$eid.'</td> 
                  <td>'.$email.'</td> 
                  <td>'.$phone.'</td>
                  <td>'.$department.'</td> 
                  <td>'.$yoe.'</td> 
              </tr>';
    }
    

?>
</body>
</html>