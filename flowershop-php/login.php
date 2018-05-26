<?PHP
header("Content-Type: text/html; charset=utf8");
header("Access-Control-Allow-Origin: *");

  $name=$_POST['name'];//post获取表单里的name
  $password=$_POST['password'];//post获取表单里的password
  $con = mysqli_connect('127.0.0.1','root','','fs');//链接数据库
  if(!$con){
    die("can't connect".mysqli_connect_error());//如果链接失败输出错误
  }
  mysqli_query ($con,"set names utf8");
  $q="select Pwd from Userreg where UserName='$name'";//向数据库插入表单传来的值的sql
  $result=mysqli_query($con,$q);//执行sql
  //echo $result;
  if (mysqli_num_rows($result) > 0) {
    // 输出数据 
    while ( $row = mysqli_fetch_assoc( $result ))  
    {  
        if($row["Pwd"]!=$password)
        {
          echo 0;//成功获取 密码不正确
        }
        else{
          $q2="select UserId from Userreg where UserName='$name'";
          $result2=mysqli_query($con,$q2);
          if (mysqli_num_rows($result2) > 0) {
            // 输出数据 
            $row2 = mysqli_fetch_assoc( $result2 );
            $json=json_encode($row2);
            echo $json;
          } else {
            //echo "0 结果";
          }//成功输出注册成功
        }
    } 
  } else {
    echo -1;//如果sql执行失败输出错误
  }
  mysqli_close($con);//关闭数据库
?>