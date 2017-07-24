<?php

/** ENVIRONMENT Should be: development, production
 * 'developement' shows all errors & debugBar
 * 'production' logs errors to log
 */
define("ENVIRONMENT", 'development');

//Setup the configuration
$GLOBALS['config'] = array(
    //Database to connect to
    'database' => array(
        'host' => '127.0.0.1',
        'db' => 'mvc',
        'username' => 'root',
        'password' => ''
    ),
    //List of any routes areas
    'routeAreas' => array(
        'client', 'admin'
    ),
    //VIEWS configuration
    'views' => array (
        'path' => 'application/views/',
        'file_type' => '.twig'
    )    
);

//Bundles - Seperated from main config as I can see this getting big
$GLOBALS['bundles'] = array(
    'js' => array( // JS bundles
        'main' => array(
            DOCUMENT_URL.'/assets/js/jquery-1.11.0.min.js',
            DOCUMENT_URL.'/assets/js/jquery.validate.min.js',
            DOCUMENT_URL.'/assets/js/bootstrap.min.js',
            DOCUMENT_URL.'/assets/js/forms.js'
        )
    ),
    'css' => array( // CSS bundles
        'main' => array(
           DOCUMENT_URL. '/assets/css/bootstrap.min.css',
           DOCUMENT_URL. '/assets/css/bootstrap-theme.min.css',
            DOCUMENT_URL.'/assets/css/app.css'
        )
    )
);
