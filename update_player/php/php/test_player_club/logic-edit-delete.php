<?php



include('db-connect.php');

$input = filter_input_array(INPUT_POST);

if ($input['action'] === 'edit') 
{	
	$sql = "UPDATE other_details SET club ='" . $input['club'] . "',preferred_position ='" . $input['preferred_position'] . "'" ." WHERE player_id='" . $input['player_id'] . "'";
	
    mysqli_query($con,$sql);
} 
if ($input['action'] === 'delete') 
{
    mysqli_query($con,"DELETE FROM other_details WHERE player_id='" . $input['player_id'] . "'");
} 


mysqli_close($mysqli);

echo json_encode($input);
?>
