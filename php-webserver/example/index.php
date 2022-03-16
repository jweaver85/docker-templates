<?php

$request = $_SERVER['REQUEST_URI'];

switch ($request) {
    case '':
    case '/' :
        require __DIR__ . '/views/index.php';
        break;
    case '/hello-world/' :
        require __DIR__ . '/views/hello-world.php';
        break;
    default:
        http_response_code(404);
        require __DIR__ . '/views/404.php';
        break;
}
