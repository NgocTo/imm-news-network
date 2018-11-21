<?php
include_once("database.php");
$firstName = $_POST["contact-first"];
$lastName = $_POST["contact-last"];
$email = $_POST["contact-email"];
$interestIndustry = isset($_POST["contact-interest--industry"])? $_POST["contact-interest--industry"] : 0;
$interestTechnical = isset($_POST["contact-interest--technical"])? $_POST["contact-interest--technical"] : 0;
$interestCareer = isset($_POST["contact-interest--career"])? $_POST["contact-interest--career"] : 0;
$role = $_POST["contact-role"];

$stmt = $pdo->prepare(
    "INSERT INTO `contact` (`id`, `firstname`, `lastName`, `email`, `interestIndustry`, `interestTechnical`, `interestCareer`, `role`)
    VALUES (null, '$firstName', '$lastName', '$email', '$interestIndustry', '$interestTechnical', '$interestCareer', '$role')");
$stmt->execute();
// var_dump($_POST);

header('Location: contact-thankyou.php');
?>
