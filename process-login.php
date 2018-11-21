<?php
session_start();
include_once("database.php");

    $username = $_POST['login-user'];
    $password = $_POST['login-pass'];

    $stmt = $pdo->prepare("SELECT * FROM `users` WHERE `username` = '$username' AND `password` = '$password'");
    $stmt->execute();
    if ($row = $stmt->fetch()) {
        $_SESSION['logged-in'] = true;
        $_SESSION['username'] = $row['username'];
        $_SESSION['userId'] = $row['id'];
        $_SESSION['role'] = $row['role'];

        if(($_SESSION['role'] == 1) || ($_SESSION['role'] == 2)) {
            header('Location: dashboard.php');
        } else {
        header('Location: index.php');
        }
    }
?>
