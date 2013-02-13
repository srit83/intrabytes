<?php
/**
 * @created 06.02.13 - 15:48
 * @author stefanriedel
 */

namespace Customers;
use \Srit\Model;

class Model_Customer_Project extends Model {
    protected static $_properties = array(
        'id',
        'name',
        'customer_id',
        'created_at' => array(
            'type' => 'datetime'
        ),
        'updated_at' => array(
            'type' => 'datetime'
        )
    );

    protected static $_belongs_to = array(
        'customer'
    );

    protected static $_observers = array(
        'Orm\Observer_CreatedAt' => array(
            'events' => array('before_insert'),
            'mysql_timestamp' => true,
        ),
        'Orm\Observer_UpdatedAt' => array(
            'events' => array('before_save'),
            'mysql_timestamp' => true,
        ),
    );
    
    public static function find($id = null, array $options = array()) {
        $tmp_options = array(
            'related' => array(
                'customer'
            )
        );
        $options = array_merge_recursive($tmp_options, $options);
        return parent::find($id, $options);
    }
}