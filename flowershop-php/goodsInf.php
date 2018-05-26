<?PHP
header("Content-Type: text/html; charset=utf8");
header("Access-Control-Allow-Origin: *");
$floId=$_POST['floId'];//post获取表单里的name
//  $floId='1';//post获取表单里的name
  $con = mysqli_connect('127.0.0.1','root','','fs');//链接数据库
  if(!$con){
    die("can't connect".mysqli_connect_error());//如果链接失败输出错误
  }
mysqli_query ($con,"set names utf8");
// $response=array();
// $response2=array();
$query = "select FloName,Price,Inventory,Buyed,FloAddress from flowerinf where FloId='$floId'";
// $query2 = "select Img from floImg where FloId='$floId'";
$result = mysqli_query ($con,$query);
// $result2 = mysqli_query ($con,$query2);

// if (mysqli_num_rows($result2) > 0) {
//     // 输出数据 
//     while ( $row2 = mysqli_fetch_assoc( $result2 ))  
//     {  
//         $response [] = $row2;  
//     } 
// } else {
//     echo "0 结果";
// }
if (mysqli_num_rows($result) > 0) {
    // 输出数据 
    $row = mysqli_fetch_assoc( $result );     
} else {
    //echo "0 结果";
}
$json=json_encode($row);
// $json2=json_encode($response);
echo $json;
// echo $json2;
mysqli_free_result($result); 
mysqli_close($con);//关闭数据库 
?>