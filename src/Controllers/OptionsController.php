<?php
/**
 * Author: gleuton.pereira
 */

namespace Quiz\Controllers;


use Quiz\Model\Option;

class OptionsController
{
    private $model;

    public function __construct()
    {
        $this->model = new Option();
    }

    /**
     * @param  string  $id
     *
     * @return string|null
     */
    public function findByQuestion(string $id): ?string
    {
        return json_encode($this->model->findByQuestion($id));
    }

    public function isCorrect(int $idOpt)
    {
        return json_encode($this->model->isCorrect($idOpt));
    }
}