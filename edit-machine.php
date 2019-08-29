<?php

//edit.php

require '../includes/dbh.inc.php';

$message = '';

$form_data = json_decode(file_get_contents("php://input"));

// Escaping special characters from submitting data & storing in new variables.
$date_format = date("Y-m-d", strtotime($form_data->date));
$date = mysqli_real_escape_string($conn, $date_format);
$mname = mysqli_real_escape_string($conn, $form_data->machine_name);
$mno = mysqli_real_escape_string($conn, $form_data->machine_no);
$name = mysqli_real_escape_string($conn, $form_data->driver_name);
$lic = mysqli_real_escape_string($conn, $form_data->lic_no);
$mobile = mysqli_real_escape_string($conn, $form_data->mobile_no);
$supplier = mysqli_real_escape_string($conn, $form_data->supp_id);
// mysqli update query
$query = "UPDATE tbl_machine_register SET date ='$date',machine_name = '$mname',machine_no = '$mno',driver_name = '$name',lic_no = '$lic',mobile_no = '$mobile',supp_id = '$supplier' where machine_id='$machine_id'";
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
