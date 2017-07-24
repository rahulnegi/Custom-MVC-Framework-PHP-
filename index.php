<?php

//Shorthand directory seperator and root folder
define("DS", DIRECTORY_SEPARATOR);
define("ROOT", dirname(__FILE__));
define("BASE_URL",  "http://" . $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI']);
define("DOCUMENT_URL",$_SERVER['DOCUMENT_ROOT'].'/test/mvc/');
require_once('core/init.php');