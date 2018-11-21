<?php
session_start();
include_once("database.php");

$user = $_SESSION['userId'];
$article = $_POST['articleId'];
$l = $pdo->prepare("SELECT * FROM `users-articles` WHERE `user` = '$user'");
$l->execute();
$likes = $l->fetchAll(PDO::FETCH_ASSOC);
foreach($likes as $like) {
    if ($article !== $like["article"]){
        $stmt = $pdo->prepare(
            "INSERT INTO `users-articles` (`user`, `article`)
            VALUES ('$user', '$article')");
        $stmt->execute();
        header('Location: index.php');
    } else {
        $stmt = $pdo->prepare(
            "DELETE FROM `users-articles` WHERE `article` = '$article'");
        $stmt->execute();
        header('Location: index.php');
    }
}
?>
