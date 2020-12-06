<?php

$url = '';
if(isset($_GET['url'])){
    $url = explode('/',$_GET['url']);
}

if($url == ""){
    require "main.html";
} else {
    require "main.html";
}
