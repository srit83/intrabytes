<?php
/**
 * @created 05.02.13 - 12:16
 * @author stefanriedel
 */

namespace Customers;
use \Srit\Model;

class Model_Customer extends Model {
    protected static $_properties = array(
        'id',
        'created_at',
        'updated_at',
        'email',
        'company_name',
        'firstname',
        'lastname',
        'phone',
        'fax',
        'street',
        'housenumber',
        'postalcode_id',
        'salutation_id'
    );

    protected static $_has_many = array(
        'customer_contact_persons' => array(
            'cascade_save' => true,
            'cascade_delete' => true,
        )
    );

    protected static $_belongs_to = array(
        'postalcode',
        'salutation'
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

    public static function find_all_for_list(array $options = array()) {
        $model_options = array(
            'related' => array(
                'customer_contact_persons' => array(
                    'related' => array(
                        'postalcode' => array(
                            'related' => array(
                                'country'
                            )
                        ),
                        'salutation'
                    )
                ),
                'postalcode' => array(
                    'related' => array(
                        'country'
                    )
                ),
                'salutation'
            )
        );
        $options = array_merge_recursive($options, $model_options);
        return static::find_all($options);
    }

    public function validate() {
        /**
         * @todo Telefonnummern Validierung
         */
        $this->_fieldset = \Fuel\Core\Fieldset::forge()->add_model(get_called_class());
        $this->_fieldset->field('email')->add_rule('required')->add_rule('valid_email');
        $this->_fieldset->field('company_name')->add_rule('required')->add_rule('min_length', 3);
        $this->_fieldset->field('firstname')->add_rule('required')->add_rule('min_length', 2);
        $this->_fieldset->field('lastname')->add_rule('required')->add_rule('min_length', 2);
        $this->_fieldset->field('phone')->add_rule('required');
        $this->_fieldset->field('street')->add_rule('required');
        $this->_fieldset->field('housenumber')->add_rule('required');
        if($this->_fieldset->validation()->run() == false) {
            foreach ($this->_fieldset->validation()->error() as $error) {
                \Core\Messages::error($error);
            }
            return false;
        }
        return true;
    }
    
    /**
     * @param null $cascade
     * @param bool $use_transaction
     * @return bool|void
     */
    public function save($cascade = null, $use_transaction = false) {

        if($this->postalcode && !($this->postalcode instanceof \Srit\Model_Postalcode)) {
            $postalcode = Model_Postalcode::find_by_postalcode($this->postalcode);
            if($postalcode == false) {
                $postalcode = Model_Postalcode::forge(array('postalcode' => $this->postalcode, 'city' => $this->city, 'country_id' => $this->country_id));
                $postalcode->save();
            }
            $this->postalcode = $postalcode;
        }
        return parent::save();
    }

}