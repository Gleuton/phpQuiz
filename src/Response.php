<?php
/**
 * Author: gleuton.pereira
 */

namespace Quiz;


class Response
{
    public function __invoke($action, $params)
    {
        if (is_string($action)) {
            $action = explode('@', $action);
            $class = '\\Quiz\Controllers\\' . $action[0];
            $action[0] = new $class;
        }

        $response = call_user_func_array($action, $params);

        if (is_array($response) || is_object($response)) {
            $response = json_encode($response);
        }
        echo $response;
    }
}