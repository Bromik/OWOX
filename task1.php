<?php
/**
 * @param $a array
 * @param $b int
 * @return bool
 *
 */
function searchInArray($a, $b)
{
    foreach ($a as $item) {
        if ($item === $b) {
            return true;
            break;
        }
    }
    return false;
}