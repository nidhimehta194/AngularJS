<?php

//insert.php

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

// mysqli insert query
$query = "INSERT into tbl_machine_register (date,machine_name,machine_no,driver_name,lic_no,mobile_no,supp_id,is_active) VALUES ('$date','$mname','$mno','$name','$lic','$mobile','$supplier','1')";
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
