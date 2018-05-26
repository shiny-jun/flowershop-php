<?php 
  header("Content-Type: text/html; charset=utf8");
  header('Access-Control-Allow-Origin:*');

  $name=$_POST['name'];//post获取表单里的name
  $password=$_POST['password'];//post获取表单里的password
  $email=$_POST['email'];//post获取表单里的password
 
  $con = mysqli_connect('127.0.0.1','root','','fs');//链接数据库
  if(!$con){
    die("can't connect".mysql_error());//如果链接失败输出错误
  }
  mysqli_query ($con,"set names utf8");
  $s="select Pwd from Userreg where UserName='$name'";//向数据库插入表单传来的值的sql
  $result=mysqli_query($con,$s);//执行sql
  if (mysqli_num_rows($result) > 0) {
    echo 0;//用户已注册
  } 
  else {
    //如果sql执行失败输出错误
    $q="insert into Userreg(UserName,Pwd,Email) values ('$name','$password','$email')";//向数据库插入表单传来的值的sql
    $reslut=mysqli_query($con,$q);//执行sql
    echo 1;//成功输出注册成功
  }

  
  mysqli_close($con);//关闭数据库
 
?>