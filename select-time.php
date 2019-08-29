<?php

//select.php

require '../includes/dbh.inc.php';

$query = "SELECT tbl_machine_time.id,tbl_machine_time.date,tbl_machine_time.start_time,tbl_machine_time.end_time,tbl_machine_time.diesel,tbl_machine_time.amount,tbl_machine_time.remarks,tbl_machine_time.machine_id,tbl_machine_register.machine_id,tbl_machine_register.machine_name FROM "
        . "tbl_machine_time inner join tbl_machine_register on tbl_machine_register.machine_id = tbl_machine_time.machine_id where tbl_machine_time.is_active='1'";


$result = mysqli_query($conn, $query);
$data = array();
if (mysqli_num_rows($result) != 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        
        /* diffrence between start time and end time */
        $startTime = $row['start_time'];
        $endTime = $row['end_time'];
        $diff = abs(strtotime($startTime) - strtotime($endTime));
        $tmins = $diff / 60;
        $hours = floor($tmins / 60);
        $mins = $tmins % 60;
        /* ------------------ */

        $dt['id'] = $row['id'];
        $dt['date'] = $row['date'];
        $dt['machine_name'] = $row['machine_name'];
        $dt['diesel'] = $row['diesel'];
        $dt['amount'] = $row['amount'];
        $dt['remarks'] = $row['remarks'];
        
        $dt['start_time'] = date("H:i", strtotime($row['start_time']));
        if ($row['end_time'] != "") {
            $dt['end_time'] = date("H:i", strtotime($row['end_time']));
        } else {
            $dt['end_time'] = "";
        }
        if ($startTime && $endTime != "") {
            $dt['diffrence'] = $hours . " hours, " . $mins . " minutes";
        } else {
            $dt['diffrence'] = "";
        }
        $data[] = $dt;
        
    }
    echo json_encode($data);
}
?>