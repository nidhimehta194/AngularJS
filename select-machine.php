<?php

//select.php

require '../includes/dbh.inc.php';


$query = "SELECT tbl_machine_register.machine_id,tbl_machine_register.date,tbl_machine_register.machine_name,tbl_machine_register.machine_no,tbl_machine_register.driver_name,tbl_machine_register.lic_no,tbl_machine_register.mobile_no,tbl_machine_register.supp_id,tbl_supplier.supp_id,tbl_supplier.supp_name FROM "
        . "tbl_machine_register inner join tbl_supplier on tbl_supplier.supp_id = tbl_machine_register.supp_id where `tbl_machine_register`.`is_active`='1'";

$result = mysqli_query($conn, $query);
$data = array();
if (mysqli_num_rows($result) != 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }
    echo json_encode($data);
}

?>