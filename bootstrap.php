<?php

use Quiz\Connection;
use Quiz\Router;

require_once __DIR__.'/vendor/autoload.php';


$router = new Router();

require_once __DIR__.'/routes/web.php';

try {
    $result = $router->run();
    $app = new \Quiz\Response();
    $app($result['action'], $result['params']);
} catch (\Quiz\Exceptions\HttpException $e) {
    echo json_encode([
        'error' => $e->getMessage(),
        'code' => $e->getCode()
    ]);
}