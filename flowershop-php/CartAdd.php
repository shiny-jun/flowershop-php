<?PHP
header("Content-Type: text/html; charset=utf8");
header("Access-Control-Allow-Origin: *");

  $fname=$_POST['floname'];//post获取表单里的name
  $way=$_POST['way'];
  $con = mysqli_connect('127.0.0.1','root','','fs');//链接数据库
  if(!$con){
    die("can't connect".mysqli_connect_error());//如果链接失败输出错误
  }
  mysqli_query ($con,"set names utf8");
  if($way=='-')
  {
  $q="UPDATE ShopCar SET FlosSum=FlosSum-1 where FloId in(select FloId from flowerinf where FloName='$fname')";//向数据库插入表单传来的值的sql
  $result=mysqli_query($con,$q);
}else if($way=='+')
{
    $q="UPDATE ShopCar SET FlosSum=FlosSum+1 where FloId in(select FloId from flowerinf where FloName='$fname')";//向数据库插入表单传来的值的sql
    $result=mysqli_query($con,$q);
}else if($way=='del')
{
    $q="Delete from ShopCar where FloId in(select FloId from flowerinf where FloName='$fname')";//向数据库插入表单传来的值的sql
    $result=mysqli_query($con,$q);
}
//执行sql
  //echo $result;
  mysqli_close($con);//关闭数据库
 
?>