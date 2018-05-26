<?php  
header('Access-Control-Allow-Origin:*');
 header("Content-Type: text/html; charset=UTF-8");  
    $userId=(int)$_POST['userId'];//����   
     $con = mysqli_connect ( "127.0.0.1", "root", "" ,'fs'); 
     mysqli_options($con,MYSQLI_OPT_INT_AND_FLOAT_NATIVE,true);   
     if (!$con)  
     {  
         die ( 'Could not connect: ' . mysqli_connecterror () );  
     }  
     mysqli_query ($con,"set names utf8");
     $response=array();
    $query = "select BacketId,FloName,Price,FloImg,FlosSum 
                        from shopcar,flowerinf 
                        where shopcar.FloId=flowerinf.FloId and UserId=$userId";
    $result = mysqli_query ($con,$query); 
    if (mysqli_num_rows($result) > 0) {
        // 输出数据 
        while ( $row = mysqli_fetch_assoc( $result ))  
        {  
            $row["allPrice"]=$row["Price"]*$row["FlosSum"];
            $response [] = $row;
        } 
        $json=json_encode($response);
        echo $json;
    } else {
        echo 0;
    }
     mysqli_free_result($result); 
     mysqli_close ( $con );  
?>  