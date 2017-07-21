<?php
/**
 * @param $s
 * return string
 */

function myStrRev($s)
{
    $s=implode(array_reverse(str_split($s)));

    return $s;
}