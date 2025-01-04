<?php

function classAutoLoader($className) {
    $path = 'classes/';
    $extension = '.class.php';
    $fullPath = $path . $className . $extension;
    require_once $fullPath;
}

spl_autoload_register('classAutoLoader');
