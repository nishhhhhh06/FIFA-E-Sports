<?php



include('db-connect.php');

$input = filter_input_array(INPUT_POST);

if ($input['action'] === 'edit') 
{	
	$sql = "UPDATE position SET gk ='" . $input['gk'] . "',df ='" . $input['df'] . "',cm ='" . $input['cm'] . "', fr='" . $input['fr'] . "'" ." WHERE player_id='" . $input['player_id'] . "'";
	
    mysqli_query($con,$sql);
} 
if ($input['action'] === 'delete') 
{
    mysqli_query($con,"DELETE FROM position WHERE player_id='" . $input['player_id'] . "'");
} 


mysqli_close($mysqli);

echo json_encode($input);
?>
