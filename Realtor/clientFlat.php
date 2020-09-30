<?php

namespace Realtor;

use PDO;

class clientFlat
{
    private $_connect;
    public $clientFlats;
    
    public function __construct($_connect)
    {
        $this->_connect = $_connect;
    }

    public function сlientFlat(int $client_id, ?int $room_amount = null): void
    {
        $sql = "SELECT * FROM `realtion_client_flat`
            INNER JOIN flats ON `realtion_client_flat`.`flat_id` = `flats`.`id`
            WHERE `client_id` = '$client_id'";

        $sql .= $room_amount ? " AND `rooms` = '$room_amount'" : '';

        $quary = $this->_connect->prepare($sql);
        $quary->execute(array());
        
        while ($array = $quary->fetch(PDO::FETCH_ASSOC)) {
                $this->clientFlats[] = $array;   
        }
    }
}