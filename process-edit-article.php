<?php
session_start();
include_once("database.php");
$id = $_POST['id'];
$title = $_POST['title'];
$authorId = $_POST['authorId'];
$preview = $_POST['preview'];
$content = $_POST['content'];
$categoryId = $_POST['categoryId'];
$url = $_POST['url'];
$isFeatured = isset($_POST['isFeatured'])? $_POST['isFeatured'] : "0";

$imgdir = 'img/';
$imgfile = $imgdir . basename($_FILES['image']['name']);
$image = $_FILES['image']['name'];
if (move_uploaded_file($_FILES['image']['tmp_name'], $imgfile)) {
    $stmt = $pdo->prepare(
        "UPDATE `articles`
        SET `title`='$title', `authorId`='$authorId', `preview`='$preview', `content`='$content', `categoryId`='$categoryId', `url`='$url', `image`='$imgfile', `isFeatured`='$isFeatured'
        WHERE `id`='$id'");
    $stmt->execute();
    header('Location: dashboard.php');
} else {
    $stmt = $pdo->prepare(
        "UPDATE `articles`
        SET `title`='$title', `authorId`='$authorId', `preview`='$preview', `content`='$content', `categoryId`='$categoryId', `url`='$url', `isFeatured`='$isFeatured'
        WHERE `id`='$id'");
    $stmt->execute();
    header('Location: dashboard.php');
}
?>
