<?php
/**
 * Author: gleuton.pereira
 */

namespace Quiz\Model;


class Option extends Model
{
    private $connection;

    public function __construct()
    {
        $this->connection = parent::getConnection();
    }
    public function findByQuestion(int $idQuestion)
    {
        $query = 'select id_option, `option`
                    from tb_option
                    where id_question = ?
                    ORDER BY rand()';

        $stmt = $this->connection->prepare($query);
        $stmt->bind_param('i', $idQuestion);
        $stmt->execute();

        return $stmt->get_result()->fetch_all();
    }

    public function isCorrect(int $idOpt)
    {
        $query = 'select correct
                    from tb_option
                    where id_option = ?';

        $stmt = $this->connection->prepare($query);
        $stmt->bind_param('i', $idOpt);
        $stmt->execute();

        return $stmt->get_result()->fetch_object();
    }
}