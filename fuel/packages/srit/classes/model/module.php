<?php

namespace Srit;

class Model_Module extends \CachedModel
{
    protected static $_observers = array(
        '\Observer_Translated' => array(
            'properties' => array('title', 'description')
        ),
        '\Observer_Serialized' => array(
            'properties' => array(
                'config'
            )
        ),
    );

    public static function find_active() {
        $options = array(
            'where' => array(
                'active' => 1,

            ),
            'order_by' => 'sort'
        );
        return static::find_all($options);
    }

    public function __toString() {
        return $this->get_name();
    }

}