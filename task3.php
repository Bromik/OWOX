<?php
/**
 * @param $a
 * return string
 */
function arrayReverseKeys($a)
{
    $res = array_combine(array_reverse(array_keys($a)), array_values($a));

    return $res;

}