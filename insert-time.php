<?php

//insert.php

require '../includes/dbh.inc.php';

$message = '';

$form_data = json_decode(file_get_contents("php://input"));

// Escaping special characters from submitting data & storing in new variables.
$date_format = date("Y-m-d", strtotime($form_data->date));
$date = mysqli_real_escape_string($conn, $date_format);
$machine = mysqli_real_escape_string($conn, $form_data->machine_id);
$starttime = date("h:i:s a", strtotime($form_data->start_time));
$time1 = mysqli_real_escape_string($conn, $starttime);
$diesel = mysqli_real_escape_string($conn, $form_data->diesel);
$amount = mysqli_real_escape_string($conn, $form_data->amount);
$remarks = mysqli_real_escape_string($conn, $form_data->remarks);

if ($form_data->end_time != "") {
    $endtime = date("h:i:s a", strtotime($form_data->end_time));
    $time2 = mysqli_real_escape_string($conn, $endtime);
}

// mysqli insert query
$query = "INSERT into tbl_machine_time (date,machine_id,start_time,end_time,diesel,amount,remarks,is_active) VALUES ('$date','$machine','$time1','$time2','$diesel','$amount','$remarks','1')";


// Inserting data into database
$insert = mysqli_query($conn, $query);


if ($insert) {
    $message = 'Data Inserted';
}

$output = array(
    'message' => $message
);

echo json_encode($output);
?>
