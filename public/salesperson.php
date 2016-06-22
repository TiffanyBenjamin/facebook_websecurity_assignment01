<?php
require_once("../private/database.php");
require_once("../private/db_credentials.php");
require_once("../private/functions.php");
if(!isset($_GET['id'])) {
  redirect_to('territories.php');
}
$db = db_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
$id = $_GET['id'];
function find_each_salesperson($id=0) {
  global $db;
  $sql = "SELECT * FROM salespeople ";
  $sql .= "WHERE id='" . $id . "';";
  $salespeople_result = db_query($db, $sql);
  return $salespeople_result;
}
$salespeople_result = find_each_salesperson($id);
$row_count = db_num_rows($salespeople_result);

if($row_count > 0) {
  $person = db_fetch_assoc($salespeople_result);
  db_free_result($salespeople_result);
}
else {
  redirect_to('territories.php');
}
?>
<?php $page_title = 'Salesperson'; ?>


<div id="main-content">
  <a href="territories.php">Back to Territories</a><br />
  <br />

  <div id="salesperson>">
    <h1>Salesperson</h1>

    <div class="details">
      <?php

        echo h($person['first_name']) . " " . h($person['last_name']);
        echo "<br />";
        echo h($person['phone']);
        echo "<br />";
        echo h($person['email']);
        echo "<br />";
      ?>
    </div>
    <br />
    <div id="territories">
      <h2>Territories</h2>

      <?php
      function find_salespersons_territories($id=0) {
        global $db;
        $sql = "SELECT * FROM territories ";
        $sql .= "LEFT JOIN salespeople_territories
                  ON (territories.id = salespeople_territories.territory_id) ";
        $sql .= "WHERE salespeople_territories.salespeople_ids='" . $id . "' ";
        $sql .= "ORDER BY territories.name ASC;";
        $territories_result = db_query($db, $sql);
        return $territories_result;
      }
        $territories_result = find_salespersons_territories($id);
        echo "<ul id=\"territories\">";
        while($territory = db_fetch_assoc($territories_result)) {
          echo "<li>" . h($territory['name']) . "</li>";
        }
        db_free_result($territories_result);
        echo "</ul>";

      ?>
    </div>
  </div>

</div>
