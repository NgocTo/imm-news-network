<?php
    session_start();
    include_once("database.php");
    $id = $_POST['id'];
    var_dump($id);
    $stmt = $pdo->prepare("DELETE FROM `articles` WHERE `id`='$id'");
    $stmt->execute();
    // header('Location: dashboard.php');
?>
