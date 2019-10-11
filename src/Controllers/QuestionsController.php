<?php
/**
 * Author: gleuton.pereira
 */

namespace Quiz\Controllers;


use Quiz\Model\Question;

class QuestionsController
{
    private $model;

    public function __construct()
    {
        $this->model = new Question();
    }

    /**
     * @return false|string
     */
    public function list(): ?string
    {
        return json_encode($this->model->raffle(5));
    }

    /**
     * @param  string  $id
     *
     * @return string|null
     */
    public function find(string $id): ?string
    {
        return json_encode($this->model->find($id));
    }
}