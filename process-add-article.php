<?php
session_start();
include_once("database.php");

    $imgdir = 'img/';
    $imgfile = $imgdir . basename($_FILES['image']['name']);
    $image = "img/" . $_FILES['image']['name'];

    $title = $_POST['title'];
    $authorId = $_POST['authorId'];
    $preview = $_POST['preview'];
    $content = $_POST['content'];
    $categoryId = $_POST['categoryId'];
    $url = $_POST['url'];
    $isFeatured = isset($_POST['isFeatured'])? $_POST['isFeatured'] : "0";

    if (move_uploaded_file($_FILES['image']['tmp_name'], $imgfile)) {

        $stmt = $pdo->prepare(
            "INSERT INTO `articles` (`id`, `title`, `authorId`, `preview`, `content`, `categoryId`, `image`, `url`, `isFeatured`)
            VALUES (null, '$title', '$authorId', '$preview', '$content', '$categoryId', '$image', '$url', '$isFeatured')");
        $stmt->execute();
        header('Location: dashboard.php');
    }
?>
