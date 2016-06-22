<?php

  function h($string="") {
    return htmlspecialchars($string);
  }
  function u($string="") {
    return urlencode($string);
  }
  function raw_u($string="") {
    return rawurlencode($string);
  }
  function redirect_to($location) {
    header("Location: " . $location);
    exit;
  }

?>
