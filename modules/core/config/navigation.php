<?php
/**
 * @created 22.10.12 - 13:39
 * @author stefanriedel
 */

return array(
    'top_left' => array(),
    'top_right' => array(
        'settings' => array(
            'route' => 'javascript: void(0)',
            'links' => array(
                'languages' => array(
                    'route' => core_settings_languages_list_route(),
                    'acl' => 'Core\\Settings_Languages.list'
                ),
            )
        ),
    )
);