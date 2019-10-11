<?php
/**
 * Author: gleuton.pereira
 */

namespace Quiz\Model;


use Quiz\Connection;

class Question extends Model
{
    private $connection;

    public function __construct()
    {
        $this->connection = parent::getConnection();
    }

    public function raffle(int $number = 3): array
    {
        $query = 'SELECT id_question FROM tb_question ORDER BY rand() LIMIT ?';

        $stmt = $this->connection->prepare($query);
        $stmt->bind_param('i', $number);
        $stmt->execute();

        return $stmt->get_result()->fetch_all();
    }

    public function find(int $idQuestion)
    {
        $query = 'select id_question, question, code
                    from tb_question
                    where id_question = ?';

        $stmt = $this->connection->prepare($query);
        $stmt->bind_param('i', $idQuestion);
        $stmt->execute();

        return $stmt->get_result()->fetch_object();
    }
}