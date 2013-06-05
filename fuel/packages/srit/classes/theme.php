<?php
/**
 * @created 22.11.12 - 14:54
 * @author stefanriedel
 */

namespace Srit;

class Theme extends \Fuel\Core\Theme
{

    protected $_templates_path_prefix = '';

    public function set_templates_path_prefix($templates_path_prefix)
    {
        $this->_templates_path_prefix = $templates_path_prefix;
        return $this;
    }

    public function get_templates_path_prefix()
    {
        return $this->_templates_path_prefix;
    }

    public static function clear($name = '_default_')
    {
        if (isset(static::$instances[$name])) {
            unset(static::$instances[$name]);
        }
    }

    public function prepend_path($path)
    {
        $path = rtrim($path, DS) . DS;
        $this->paths = array_merge(array($path), $this->paths);
    }

    protected function find_file($view, $themes = null)
    {
        if(($count = count($this->paths))>1) {

            /**
             * extra paths prio!
             */
            $finder = \Finder::forge($this->paths);
            if($finder->search('views', $view)) {
                return $view;
            }
        }
        return parent::find_file($view, $themes); // TODO: Change the autogenerated stub
    }


    public function get_active_name() {
        return $this->active['name'];
    }

}