<?php

//delete.php

require '../includes/dbh.inc.php';

$message = '';

$form_data = json_decode(file_get_contents("php://input"));
// mysqli delete query
$query = "update tbl_machine_time set is_active='0' WHERE id = '" . $form_data->id . "'";
$delete = mysqli_query($conn, $query);

if ($delete) {
    $message = 'Data Deleted';
}

$output = array(
    'message' => $message
);

echo json_encode($output);
?>