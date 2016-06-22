<!doctype html>
<?php
require_once("../private/database.php");
require_once("../private/db_credentials.php");
require_once("../private/functions.php");
?>
<html lang="en">
  <head>
    <title>Salesperson Territories</title>
    <meta charset="utf-8">
    <meta name="description" content="Salesperson Territories">
    <style>
      ol {
          margin-left: 10px;
      }
      li {
        margin: 10px;
      }
      span.state_name {
        color: black;
      }
      span.state_code {
        font-size: 10px;
      }

    </style>
  </head>
  <body>
    <div id="main-content">
      <h1>Territories</h1>
        <?php

          $db = db_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
          $sql = "SELECT * FROM states order by name asc";
          $states_result = db_query($db, $sql);

          echo "<ul>";
          while( $state = db_fetch_assoc($states_result)) {
            echo "<li>";
            echo "<span class=\"state_name\">" . $state['name'] . "</span>";
            echo " (" . $state['code'] . ")";
              //loop over the territories
              $sql = "SELECT * FROM territories where state_id = " . $state['id'] . "
                order by position asc";
              $territories_result = db_query($db, $sql);

              echo "<ul id=\"territories\">";
              while( $territory = db_fetch_assoc($territories_result)) {
                if (trim($territory['name']) != trim($state['name'])){
                  echo "<li class=\"territory_name\">" . $territory['name'] .
                  "</li>";
                  }
                //loop over the salespeople
                $sql = " SELECT * FROM salespeople
                left join salespeople_territories
                on (salespeople_territories.salespeople_ids = salespeople.id)
                where territory_id = " . $territory['id'] . " order by last_name asc, first_name asc;";
                $salespeople_result = db_query($db, $sql);
                while( $person = db_fetch_assoc($salespeople_result)) {
                  $url = 'salesperson.php?id=' . u($person['id']);

                  echo "<a href=\"" . h($url) . "\">";
                  echo h($person['first_name']) . " " . h($person['last_name']);
                  echo "</a>";
                }

          }
            db_free_result($salespeople_result);
            echo "</ul>";
            echo "</li>";
        }
          db_free_result(territories_result);
          echo "</ul>";
        ?>
    </div>
  </body>
</html>
