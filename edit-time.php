<?php

//edit.php

require '../includes/dbh.inc.php';

$message = '';

$form_data = json_decode(file_get_contents("php://input"));

// Escaping special characters from submitting data & storing in new variables.
$id = mysqli_real_escape_string($con, $form_data->id);

$date_format = date("Y-m-d", strtotime($form_data->date));
$date = mysqli_real_escape_string($con, $date_format);
$machine = mysqli_real_escape_string($conn, $form_data->machine_id);
$starttime = date("h:i:s a", strtotime($form_data->start_time));
$time1 = mysqli_real_escape_string($con, $starttime);
if ($form_data->end_time != "") {
    $endtime = date("h:i:s a", strtotime($form_data->end_time));
    $time2 = mysqli_real_escape_string($con, $endtime);
}
$endtimestamp = date('Y-m-d h:i:s');
$end_time_timestamp = mysqli_real_escape_string($con, $endtimestamp);
// mysqli update query
$query = "UPDATE tbl_student SET date ='$date',machine_id='$machine',start_time = '$time1',end_time = '$time2',modify_datetime = '$end_time_timestamp' where id='$id'";

// updating data into database
$update = mysqli_query($conn, $query);

if ($update) {
    $message = 'Data Updated';
}

$output = array(
    'message' => $message
);

echo json_encode($output);
?>
