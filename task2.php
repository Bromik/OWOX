<?php
/**
 * @param $string
 * @return bool
 */

function checkBrackets($s)
{
    $stack = array();
    $pairs = array('(' => ')', '[' => ']');
    $len = strlen($s);
    for ($i = 0; $i < $len; $i++) {
        $brackets = $s[$i];
        if ($brackets == '(' or $brackets == '[') {
            array_push($stack, $brackets);
        } elseif ($brackets == ')' or $brackets == ']') {
            $open = array_pop($stack);
            if ($pairs[$open] != $brackets) {
                return False;
            }
        }
    }
    return empty($stack);
}