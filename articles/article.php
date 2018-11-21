<?php
    session_start();
    include_once("../header.php");
    include_once("../database.php");
    $id = $_GET["id"];
    $stmt = $pdo->prepare("SELECT a.`id`, `title`, `authorId`, `content`, `category`, `image`, `url`, `isFeatured`, `firstName`, `lastName` FROM `articles` a
                                    JOIN `users` u ON a.`authorId` = u.`id`
                                    JOIN `categories` c ON a.`categoryId` = c.`id`
                                    WHERE a.`id` = '$id'");
    $stmt->execute();
    $article = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<main>

    <section>
        <h2 class="hidden">Article section</h2>
        <article>
            <h3><?= $article["title"]?></h3>
            <img src="<?=ROOT_URI . $article["image"]?>" alt="placeholder image" />
            <div>By <?= $article["firstName"] . " " . $article["lastName"]?></div>
            <p><?= $article["content"]?></p>
            <div>
                <a href="<?= $article['url'] ?>">Go to source article</a> |
                <a href="<?=ROOT_URI?>">Back to home</a>
            </div>
        </article>
        <hr />
    </section> <!-- end of article section-->

</main>
<?php
    include_once("../footer.php");
?>
