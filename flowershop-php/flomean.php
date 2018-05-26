<?php  
header('Access-Control-Allow-Origin:*');
header("Content-Type: text/html; charset=UTF-8");  
    $con = mysqli_connect ( "127.0.0.1", "root", "" ,'fs');  
    mysqli_options($con,MYSQLI_OPT_INT_AND_FLOAT_NATIVE,true); 
    if (!$con)  
    {  
        die ( 'Could not connect: ' . mysqli_connecterror () );  
    }  
    mysqli_query ($con,"set names utf8");
    $i=0;
    $response=array();
    $query = "select * from flomean";
    $result = mysqli_query ($con,$query); 
        if (mysqli_num_rows($result) > 0) {
        // 输出数据 
            while ( $row = mysqli_fetch_assoc( $result ))  
            {  
                $response[] = $row;  
            } 
        } else {
            echo "0 结果";
        }
    //echo $response;
     $json=json_encode($response);
     echo $json;
     mysqli_free_result($result); 
     mysqli_close ( $con );  
?>  