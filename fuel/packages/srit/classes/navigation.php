<?php
/**
 * @created 21.03.13 - 10:26
 * @author stefanriedel
 */

namespace Srit;
use Fuel\Core\Config;
use Fuel\Core\Theme;
use Oil\Exception;

class Navigation
{

    protected static $_instances = array();

    /**
     * @var Navigation
     */
    protected static $_instance = null;

    protected $_nav_data_array = array();

    /**
     * @var Navigation_Elements
     */
    protected $_elements = null;

    protected $_name = 'default';

    protected $_rendered = '';

    public static function instance()
    {
        if (static::$_instance == null) {
            static::$_instance = new static();
        }
        return static::$_instance;
    }

    /**
     * @param string $name
     * @return Navigation
     */
    public static function forge($name)
    {
        if (!isset(static::$_instances[$name])) {
            static::$_instances[$name] = new static($name);
        }
        return static::$_instances[$name];
    }

    public function __construct($name = null)
    {
        if ($this->_nav_data_array == array()) {
            if($name == null) {
                $this->_nav_data_array = Config::load('navigation', true);
            } else {
                Config::load('navigation', true);
                $this->_nav_data_array[$name] = Config::get('navigation.' . $name);
            }
            $this->_initNavigationElements();
        }
        if ($name != null) {
            $this->_name = $name;
            if (!isset($this->_nav_data_array[$name])) {
                throw new Exception(__('exception.navigation.level.not_exists', array('level' => $name)));
            }
        }
    }

    protected function _initNavigationElements()
    {
        foreach ($this->_nav_data_array as $level => $elements) {
            $this->_elements[$level] = new Navigation_Elements($elements);
        }
    }

    /**
     * @return Navigation_Elements
     */
    public function getElements()
    {
        return new $this->_elements;
    }

    public function render($max_depth = null, $force = false)
    {

        if(!empty($this->_name) && isset($this->_elements[$this->_name]) && $this->_elements[$this->_name] instanceof Navigation_Elements) {
            $this->_rendered = Theme::instance()->view('templates/_partials/navigation/' . $this->_name)->set('elements', $this->_elements[$this->_name], false);
        }

        return $this->_rendered;
    }

    /**
     * @param Navigation_Elements $elements
     * @param int $depth
     */
    protected function _render_elements(Navigation_Elements $elements, $depth = 0)
    {
        //var_dump($elements);

        /**foreach ($elements as $element) {
            if ($element->hasChildren()) {
                $this->_render_elements($element->getChildren(), ++$depth);
            } else {
                $this->_render_element($element);
            }
        }**/
    }

    protected function _render_element($element)
    {
    }

    public function __toString()
    {
        return $this->render();
    }

}