<?php
/**
 * @created 11.02.13 - 19:00
 * @author stefanriedel
 */
namespace Srit;

use Srit\Model;

class Model_User_Public_Key extends Model {
    protected static $_belongs_to = array(
        'user',
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
        'Srit\\Observer_Localized' => array(
            'properties' => array(
                'created_at' =>array(
                    'type' => 'datetime'
                ),
                'updated_at' =>array(
                    'type' => 'datetime'
                )
            )
        )
    );

    /*public static function find_for_edit($id, array $options = array()) {
        $model_options = array(
            'where' => array(
                'id' => (int)$id,
                'user_id' => (int)$user_id
            )
        );
        $options = array_merge_recursive($options, $model_options);
        return static::find('first', $options);
    }*/

    public function validate($input = array()) {
        $this->_fieldset = \Fuel\Core\Fieldset::forge()->add_model(get_called_class());
        $this->_fieldset->field('name')->add_rule('required')->add_rule('min_length', 3);
        $this->_fieldset->field('value')->add_rule('required');
        return parent::validate($input);
    }
}