<?php
/**
 * @created 05.02.13 - 13:00
 * @author stefanriedel
 */

namespace Customers;

use \Core\Messages;
use \Core\Theme;

class Controller_Edit extends \Core\Controller_Base_User {

    public function action_index() {
        
        if(\Input::post('cancel', false)) {
            \Response::redirect(\Uri::create('/customers/list'));
        }
        
        $this->id = (int)$this->param('id');
        $this->customer = Model_Customer::find($this->id);
        $this->salutations = Model_Salutation::find_all_for_html_select();
        $this->countries = Model_Country::find_all_for_html_select();
        
        if(\Input::post('save', false)) {
            $this->customer->set(\Input::post());
            if($this->customer->validate()) {
                $this->customer->save();
                Messages::instance()->success(__(extend_locale('edit.customer.success')));
                //Messages::redirect(\Fuel\Core\Uri::create('/customers/list'));
            }
        }
        
        Theme::instance($this->template)->set_partial('content', 'customers/add/index')
                ->set('customer', $this->customer)
                ->set('salutations', $this->salutations)
                ->set('countries', $this->countries);
    }

}