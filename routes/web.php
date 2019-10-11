<?php
/**
 * Author: gleuton.pereira
 */
$router->add('get', '/', function () {
    return file_get_contents(__DIR__ . '/../view/index.html');
});

$router->add('get', '/list', 'QuestionsController@list');

$router->add('get', '/question/(\d+)', 'QuestionsController@find');

$router->add(
    'get',
    '/options/(\d+)',
    'OptionsController@findByQuestion');
$router->add(
    'get',
    '/iscorrect/(\d+)',
    'OptionsController@isCorrect');