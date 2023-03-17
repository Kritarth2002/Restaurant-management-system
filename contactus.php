<?php
$servername="localhost";
$username="root";
$password="";
$dbname="restaurent";
$conn=mysqli_connect($servername,$username,$password,$dbname);
if($_SERVER['REQUEST_METHOD']=='POST'){
$name=$_REQUEST['name'];
$email=$_REQUEST['email'];
$pno=$_REQUEST['pno'];
$msg=$_REQUEST['msg'];
// $sql="CREATE TABLE rb_contacts ( name VARCHAR(20) NOT NULL , email VARCHAR(20) NOT NULL , phone no VARCHAR(10) NOT NULL , cusine TEXT NOT NULL )";
$sql="insert into rb_contacts VALUES('$name','$email','$pno','$msg')";
$result=mysqli_query($conn,$sql);
if($result)
	{
		?>
        <script type="text/javascript">
		alert("Your details are Successfully registered!!");
		</script>
        <?php
	}


}
?>