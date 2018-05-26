<?PHP
header("Content-Type: text/html; charset=utf8");
header("Access-Control-Allow-Origin: *");

 $name=$_POST['name'];//post获取表单里的name

  $con = mysqli_connect('127.0.0.1','root','','fs');//链接数据库
  if(!$con){
    die("can't connect".mysqli_connect_error());//如果链接失败输出错误
  }
mysqli_query ($con,"set names utf8");
$query = "select Tel,Email,Address,State,City,area,himg from UserInf where UserId in(select UserId from Userreg where UserName='$name')";
$result = mysqli_query ($con,$query); 
if (mysqli_num_rows($result) > 0) {
    // 输出数据 
 $row = mysqli_fetch_assoc( $result ); 
    
} else {
    //echo "0 结果";
}
//echo $response;
$json=json_encode($row);
echo $json;
mysqli_free_result($result); 
mysqli_close($con);//关闭数据库 
?>