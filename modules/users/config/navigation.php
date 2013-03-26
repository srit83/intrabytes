<?php
/**
 * @created 21.03.13 - 10:00
 * @author stefanriedel
 */

return array(
    'top_right' => array(
        'user_settings' => array(
            'route' => 'javascript: void(0)',
            'links' => array(
                'user_pubkey_settings' => array(
                    'route' => users_settings_pubkeys_list_route(),
                    'acl' => 'Users\\Settings_Pubkeys.list'
                ),
            )
        ),
        'user_logout' => array(
            'route' => logout_route(),
            'acl' => 'Users\\Logout.index'
        )
    )
);