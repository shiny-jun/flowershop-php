<?PHP
header("Content-Type: text/html; charset=utf8");
header("Access-Control-Allow-Origin: *");
  $floId=$_POST['floId'];//post获取表单里的name
  $num=$_POST['num'];//post获取表单里的name
  $userId=$_POST['userId'];//post获取表单里的name
  $con = mysqli_connect('127.0.0.1','root','','fs');//链接数据库
  if(!$con){
    die("can't connect".mysqli_connect_error());//如果链接失败输出错误
  }
  mysqli_query ($con,"set names utf8");
  $q="select * from shopcar where FloId=$floId and UserId=$userId";//向数据库插入表单传来的值的sql
  $result=mysqli_query($con,$q);
  if(mysqli_num_rows($result) > 0){
    $row = mysqli_fetch_assoc( $result );
    $json=json_encode($row);
    echo $json;
    $q2 = "UPDATE shopcar SET FlosSum = FlosSum+$num WHERE FloId=$floId and UserId=$userId";
    $result=mysqli_query($con,$q2);
  } else {
    $q3="INSERT INTO shopcar (UserId,FloId,FlosSum) VALUES('$userId', '$floId', '$num')";//向数据库插入表单传来的值的sql
    $result=mysqli_query($con,$q3);
  }

//执行sql
  //echo $result;
  mysqli_close($con);//关闭数据库
?>