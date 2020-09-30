<?php

namespace Realtor;

use SimpleXMLElement;

class xmlExport
{
    public $array;

    public  function array_to_xml( $data, &$xml_data ) {
        foreach( $data as $key => $value ) {
            if( is_array($value) ) {
                if( is_numeric($key) ){
                    $key = 'item'.$key; //dealing with <0/>..<n/> issues
                }
                $subnode = $xml_data->addChild($key);
                $this->array_to_xml($value, $subnode);
            } else {
                $xml_data->addChild("$key",htmlspecialchars("$value"));
            }
         }
    }

    public function __construct($array)
    {
        $xml_data = new SimpleXMLElement('<?xml version="1.0" encoding="UTF-8"?><arr></arr>');

        $this->array_to_xml($array, $xml_data);

        $xml_result = $xml_data->asXML('export.xml');
    }
}