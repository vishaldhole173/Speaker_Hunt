<?php
include('include/config.php');
if(!empty($_POST["specilizationid"])) 
{

 $sql=mysqli_query($con,"select speakerName,id from speaker where specilization='".$_POST['specilizationid']."'");?>
 <option selected="selected">Select Speaker </option>
 <?php
 while($row=mysqli_fetch_array($sql))
 	{?>
  <option value="<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['speakerName']); ?></option>
  <?php
}
}


if(!empty($_POST["speaker"])) 
{

 $sql=mysqli_query($con,"select speFees from speaker where id='".$_POST['speaker']."'");
 while($row=mysqli_fetch_array($sql))
 	{?>
 <option value="<?php echo htmlentities($row['speFees']); ?>"><?php echo htmlentities($row['speFees']); ?></option>
  <?php
}
}

?>

