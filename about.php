<?php
session_start();
include_once("header.php");
include_once("database.php");
$stmt = $pdo->prepare("SELECT * FROM `sections` WHERE `pageId` = 2");
$stmt->execute();
?>

<main class="center">
<?php
while($s = $stmt->fetch(PDO::FETCH_ASSOC)) {
    if($_SESSION['role'] == 1) {
?>
<div>
    <a href="edit-section.php?id=<?= $s["id"] ?>">Edit</a>
</div>
<?php
    }
?>

<h2><?= $s["title"] ?></h2>
<p><?= $s["content"] ?></p>

<?php
}
?>
</main>

<?php
    include_once("footer.php");
?>
