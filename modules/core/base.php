<?php
/**
 * @created 08.03.13 - 10:50
 * @author stefanriedel
 */


/**
 * @todo ins routing auslagern
 */
function base_route() {
    return \Fuel\Core\Uri::create('/');
}

function logout_route() {
    return \Fuel\Core\Uri::create('/users/logout');
}

function login_route() {
    return \Fuel\Core\Uri::create('/users/login');
}


function forget_password_route() {
    \Fuel\Core\Uri::create('/users/password/forget');
}

function confirmed_email_password_route($hash) {
    \Fuel\Core\Uri::create('/users/password/confirmed_email/:hash', array('hash' => $hash));
}

function core_named_route($name, $route_params = array()) {
    $route_name = 'core_';
    $route_name .= $name;
    return named_route($route_name, $route_params);
}

function core_settings_named_route($name, $route_params = array()) {
    $route_name = 'settings_';
    $route_name .= $name;
    return core_named_route($route_name, $route_params);
}

function core_settings_languages_named_route($name, $route_params = array()) {
    $route_name = 'languages_';
    $route_name .= $name;
    return core_settings_named_route($route_name, $route_params);
}

function core_settings_locales_named_route($name, $route_params = array()) {
    $route_name = 'locales_';
    $route_name .= $name;
    return core_settings_named_route($route_name, $route_params);
}

function core_settings_languages_list_route() {
    $route_name = 'list';
    return core_settings_languages_named_route($route_name);
}

function core_settings_languages_edit_route($id) {
    $route_name = 'edit';
    $route_params['id'] = (int)$id;
    return core_settings_languages_named_route($route_name, $route_params);
}

function core_settings_languages_add_route() {
    $route_name = 'add';
    return core_settings_languages_named_route($route_name);
}

function core_settings_languages_delete_route($id) {
    $route_name = 'delete';
    $route_params['id'] = (int)$id;
    return core_settings_languages_named_route($route_name, $route_params);
}

function core_settings_locales_list_route($language_id) {
    $route_name = 'list';
    $route_params['language_id'] = (int)$language_id;
    return core_settings_locales_named_route($route_name, $route_params);
}

function core_settings_locales_add_route($language_id) {
    $route_name = 'add';
    $route_params['language_id'] = (int)$language_id;
    return core_settings_locales_named_route($route_name, $route_params);
}

function core_settings_locales_edit_route($id, $language_id) {
    $route_name = 'edit';
    $route_params['language_id'] = (int)$language_id;
    $route_params['id'] = (int)$id;
    return core_settings_locales_named_route($route_name, $route_params);
}

function core_settings_locales_delete_route($id, $language_id) {
    $route_name = 'delete';
    $route_params['language_id'] = (int)$language_id;
    $route_params['id'] = (int)$id;
    return core_settings_locales_named_route($route_name, $route_params);
}