<?php
/**
 * Author: gleuton.pereira
 */

namespace Quiz\Exceptions;

use Throwable;

class HttpException extends \Exception
{
    public function __construct(
        $message = "",
        $code = 0,
        Throwable $previous = null
    )
    {
        http_response_code($code);
        parent::__construct($message, $code, $previous);
    }
}