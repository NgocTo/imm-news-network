<?php
session_start();
include_once("database.php");

    $username = $_POST['register-user'];
    $password = $_POST['register-pass'];
    $firstName = $_POST['register-first'];
    $lastName = $_POST['register-last'];
    $role = $_POST['register-role'];

    $stmt = $pdo->prepare(
        "INSERT INTO `users` (`id`, `username`, `password`, `firstName`, `lastName`, `role`)
        VALUES (null, '$username', '$password', '$firstName', '$lastName', '$role')");
    $stmt->execute();
    header('Location: login.php');
?>
