<?PHP
header("Content-Type: text/html; charset=utf8");
header("Access-Control-Allow-Origin: *");

 $name=$_POST['name'];//post获取表单里的name
 $phone=$_POST['phone'];
 $email=$_POST['email'];
 $state=$_POST['state'];
 $city=$_POST['city'];
 $area=$_POST['area'];
 $address=$_POST['address'];
// $name='abc';//post获取表单里的name
// $phone=44444;
// $email='3333@123.com';
// $state=19;
// $city=197;
// $area=1748;
// $address='hahahah';

$con = mysqli_connect('127.0.0.1','root','','fs');//链接数据库
if(!$con){
  die("can't connect".mysqli_connect_error());//如果链接失败输出错误
}
mysqli_query ($con,"set names utf8");
$query = "UPDATE UserInf SET Tel = $phone, Email = '$email', State = $state, City = $city, area = $area, Address = '$address' WHERE UserId in(select UserId from Userreg where UserName='$name')";
$result = mysqli_query ($con,$query); 
if ($result) {
    // 输出数据 
    echo 'ok';
    
} else {
    echo 'false';//echo "0 结果";
}
// echo $response;
// $json=json_encode($row);
// echo $json;
// mysqli_free_result($result); 
mysqli_close($con);//关闭数据库 
?>