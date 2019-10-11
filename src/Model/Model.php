<?php
/**
 * Author: gleuton.pereira
 */

namespace Quiz\Model;


use Quiz\Connection;

abstract class Model
{
    /**
     * @return mixed
     */
    protected function getConnection(): \mysqli
    {
        return (new Connection(__DIR__.'/../../env.json'))->connect();
    }


}