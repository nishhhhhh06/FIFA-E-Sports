<?php



include('db-connect.php');

$input = filter_input_array(INPUT_POST);

if ($input['action'] === 'edit') 
{	
	$sql = "UPDATE salary SET wage ='" . $input['wage'] . "',value ='" . $input['value'] . "'" ." WHERE player_id='" . $input['player_id'] . "'";
	
    mysqli_query($con,$sql);
} 
if ($input['action'] === 'delete') 
{
    mysqli_query($con,"DELETE FROM salary WHERE player_id='" . $input['player_id'] . "'");
} 


mysqli_close($mysqli);

echo json_encode($input);
?>
