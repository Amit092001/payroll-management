<html>
<head>
<style>
table {
  border-collapse: collapse;
  width: 100%;
  position: relative;
  text-align: left;
  padding: 8px;
}
td {
  padding-top: 15px;
}
div{
   
  margin-top: 33px;
  margin-right: 33px;
  margin-bottom: 33px;
  
width: 60%;
text-align: center;
margin-left: 250px;
padding-left: 24px;
}

tbody {
    font-size: 28px;
}

tr:nth-child(even){background-color: #f2f2f2}

th{
    background-color: #E3990B;
color: #0c17c1;
text-align: center;
font-size: 35px;
padding: 8px;
}
</style>
</head>
<body>
<?php 
if(isset($_POST['eid']))
{
    include('connection.php'); 
    $peid=$_POST['eid'];

    $sql = mysqli_query($con,"SELECT * FROM employee,egrade where employee.eid=$peid and employee.eid=egrade.eid;");


    echo '<div>
    ';

    echo '<table border="0" cellspacing="2" cellpadding="2"> 
    
    <thead>
            <tr>
                
                <th colspan="2">
                Employee details
                </th>
               
            </tr>
        </thead>
      ';

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


            echo '
            <tbody>
            
        <tr> 
                  <td>Employee Name</td> 
                  <td>'.$fname.' '.$lname.'</td> 
              </tr>';


              echo '<tr> 
              <td>Employee salary</td> 
              
              <td>'.$salary.'</td> 
              </tr>';

          echo '<tr> 
                  <td>Employee gender</td> 
                   
                  <td>'.$gender.'</td> 
                  </tr>';
              echo '<tr> 
                  <td>Employee id</td> 
                  
                  <td>'.$eid.'</td> 
                  
              </tr>';
              echo '<tr> 
                  <td>Employee Email</td> 
                  <td>'.$email.'</td> 
                  </tr>';
              echo '<tr> 
                  <td>Employee department</td> 
                  <td>'.$department.'</td> 
                  
              </tr>';
              echo '<tr> 
                  <td>Employee phone</td> 
                  <td>'.$phone.'</td>
                  </tr>';
            echo '<tr> 
                  <td>Employee year of Experience</td> 
                  <td>'.$yoe.'</td> 
              </tr>';
              echo '<tr> 
              <td>Employee grade</td> 
              <td>'.$grade.'</td> 
          </tr>
          </tbody>
          </div>';
          

           
        }
}
    

?>
</body>
</html>