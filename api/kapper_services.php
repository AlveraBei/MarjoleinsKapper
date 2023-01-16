<?php
 
 include("../db.php");
 header('Content-Type: application/json; charset=utf-8');      //告诉系统这是一个数组，而不是string
 header("Access-Control-Allow-Origin: *");                      //给不同的locatie接口，让他们可以连接这个API

//step 1: get all categories
$query1 = $conn->prepare(' SELECT * FROM servicescategorie ');          //变量query 让后台数据库准备所需要的数据
$query1->execute([]);                                                  //变量query要求后台现在给它需要的数据
$categoriesData = $query1->fetchAll(PDO::FETCH_ASSOC);          //变量c=query.getelement(fetchAll).. $相当于var /  ->相当于 JS里面的.

//step2: get services for the categories
$new_categories = [];                                           //创建一个新数组，用来放我需要的数据
foreach ($categoriesData as $category) {                       //foreach是循环迭代,作用跟下面的for循环一样
                                                            // for ($i=0; $i < $categoriesData.length; $i++) { 
                                                            //     $category = $categoriesData[$i];
                                                            // }
    
    $query2 = $conn->prepare('SELECT * FROM services WHERE servicescategorie = ? ');//找到一个指定的servivescategorie里面的所有的servives，比如找dames里面所有的服务
    $query2->execute([ $category['servicescategorie_id'] ]);    //执行，将选定的服务内ID放到上面的问号，比如选定 7，上面的问号就变成7
    $servicesData = $query2->fetchAll(PDO::FETCH_ASSOC);       // ASSOC 是associative ，可以取得数组并包含标签。。 类似还有PDO::FETCH_NUM ,取得数组但不包含标签。 https://phpdelusions.net/pdo/fetch_modes

    $new_categories[] = [                                     //PHP中的数组adding，就像push（）在JS
        "name" => $category["categorienaam"],
        "services" => $servicesData
    ];
}
$categoriesAsJson = json_encode($new_categories); //PHP JSON Functions, Encode a value to JSON format
echo($categoriesAsJson);
 