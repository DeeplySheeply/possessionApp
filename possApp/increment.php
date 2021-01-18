<?php include 'includes/dbh.php' ?>

<?php 

$possNewCount = $_POST['possNewCount'];
$id = $_POST['id'];
$increment = "UPDATE matchdb SET possession = possession + 1 WHERE id = $id";
$incresult = mysqli_query($connection, $increment);

if (!$incresult) {
    die('Increment failed inc.php');
}
?>

