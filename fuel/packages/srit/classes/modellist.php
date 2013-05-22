<?php
/**
 * @created 22.05.13 - 13:30
 * @author stefanriedel
 */

namespace Srit;

class ModelList implements \ArrayAccess, \Iterator {

    protected $_elements = array();

    public function __construct(array $data) {
        $this->_elements = $data;
    }

    public function __toString() {
        return '';
    }


    /**
     * Interfaces
     *
     * ArrayAccess
     */
    function offsetSet($offset, $value) {
        $this->_elements[$offset] = $value;
    }

    function offsetGet($offset) {
        return $this->_elements[$offset];
    }

    function offsetUnset($offset) {
        unset($this->_elements[$offset]);
    }


    function offsetExists($offset) {
        return isset($this->_elements[$offset]);
    }

    public function rewind()
    {
        return $this;
    }

    public function current()
    {
        return current($this->_elements);
    }

    public function key()
    {
        return key($this->_elements);
    }

    public function next()
    {
        return next($this->_elements);
    }

    public function valid()
    {
        return key($this->_elements) !== null;
    }

    public function count()
    {
        return count($this->_elements);
    }
}