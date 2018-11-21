<?php
    session_start();
    include_once("database.php");
    include_once("header.php");
    $id = $_GET['id'];
    $stmt = $pdo->prepare("SELECT a.`id`, `title`, `authorId`, `preview`, `content`, `category`, `image`, `url`, `isFeatured`, `firstName`, `lastName` FROM `articles` a
                                    JOIN `users` u ON a.`authorId` = u.`id`
                                    JOIN `categories` c ON a.`categoryId` = c.`id`
                                    WHERE a.id='$id'");
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<h2>Are you sure you want to delete this article?</h2>
<article>
    <h3><?= $row["title"]?></h3>
    <img src="<?=ROOT_URI . $row["image"]?>" alt="placeholder image" />
    <div>By <?= $row["firstName"] . " " . $row["lastName"]?></div>
    <p><?= $row["preview"]?></p>
</article>
<form action="process-delete-article.php" method="post">
    <input type="hidden" name="id" value="<?= $row["id"] ?>" />
    <button>Delete</button>
</form>

<?php
include_once("footer.php");
?>
