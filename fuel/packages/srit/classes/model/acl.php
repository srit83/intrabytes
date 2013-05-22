<?php
/**
 * @created 11.03.13 - 08:45
 * @author stefanriedel
 */

namespace Srit;

use Srit\Model;

class Model_Acl extends CachedModel {
    protected static $_properties = array(
        'id',
        'area',
        'right',
        'is_global'
    );

    protected static $_many_many = array(
        'roles'
    );

    public static function find($id = null, array $options = array()) {
        $tmp_options = array(
            'related' => array(
                'roles'
            )
        );
        $options = array_merge_recursive($tmp_options, $options);
        return parent::find($id, $options);
    }
}