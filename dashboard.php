<?php
session_start();
if(($_SESSION['role'] == 1) || ($_SESSION['role'] == 2)) {
    include_once("header.php");
    include_once("database.php");
    $stmt = $pdo->prepare("SELECT a.`id`, `title`, `authorId`, `preview`, `content`, `category`, `image`, `url`, `isFeatured`, `firstName`, `lastName` FROM `articles` a
                                    JOIN `users` u ON a.`authorId` = u.`id`
                                    JOIN `categories` c ON a.`categoryId` = c.`id`");
    $stmt->execute();
    $articles = $stmt->fetchAll(PDO::FETCH_ASSOC);

    $section = $pdo->prepare("SELECT * FROM `sections` WHERE `pageId` = 1");
    $s = $section->execute();
    $s = $section->fetch(PDO::FETCH_ASSOC);
?>

<main>
    <section class="center">
        <h2><?= $s["title"]?></h2>
        <p><?= $s["content"]?></p>
        <?php
        if($_SESSION['role'] == 1) {
        ?>
        <div>
            <a href="edit-section.php?id=<?= $s["id"] ?>">Edit</a>
        </div>
        <?php } ?>
    </section>
    <section>
        <h2>Article section</h2>
            <a href="add-article.php">Add a new article</a>
            <?php
            foreach($articles as $article) {
                if ($article["isFeatured"] == 1) {
            ?>
                <article>
                    <h3>Featured article</h3>
                    <?php
                        if($_SESSION['role'] == 1) {
                    ?>
                    <div>
                        <a href="edit-article.php?id=<?= $article["id"] ?>">Edit</a>
                        | <a href="delete-article.php?id=<?= $article["id"] ?>">Delete</a>
                    </div>
                    <?php } ?>
                    <h4><?= $article["title"]?></h4>
                    <img src="<?= $article["image"]?>" alt="placeholder image" />
                    <div>By <?= $article["firstName"] . " " . $article["lastName"]?></div>
                    <p><?= $article["preview"]?></p>
                    <a href="<?= $article['url'] ?>">Go to article</a>
                </article>
                <hr />
            <?php
                }
            }
            ?>
        <section>
            <h3>Industry</h3>
            <?php
            foreach($articles as $article) {
                if($article["category"] == "Industry") {
            ?>
            <article>
                <h4><?= $article["title"]?></h4>
                <div>
                    <a href="edit-article.php?id=<?= $article["id"] ?>">Edit</a>
                    <?php
                    if($_SESSION['role'] == 1) {
                    ?>
                    | <a href="delete-article.php?id=<?= $article["id"] ?>">Delete</a>
                <?php } ?>
                </div>
                <img src="<?= $article["image"]?>" alt="placeholder image" />
                <div>By <?= $article["firstName"] . " " . $article["lastName"]?></div>
                <p><?= $article["preview"]?></p>
                <a href="<?= $article['url'] ?>">Go to article</a>
            </article>
            <hr />
            <?php
                }
            }
            ?>
        </section>
        <section>
            <h3>Technical</h3>
            <?php
            foreach($articles as $article) {
                if($article["category"] == "Technical") {
            ?>
            <article>
                <h4><?= $article["title"]?></h4>
                <div>
                    <a href="edit-article.php?id=<?= $article["id"] ?>">Edit</a>
                    <?php
                    if($_SESSION['role'] == 1) {
                    ?>
                    | <a href="delete-article.php?id=<?= $article["id"] ?>">Delete</a>
                    <?php } ?>
                </div>
                <img src="<?= $article["image"]?>" alt="placeholder image" />
                <div>By <?= $article["firstName"] . " " . $article["lastName"]?></div>
                <p><?= $article["preview"]?></p>
                <a href="<?= $article['url'] ?>">Go to article</a>
            </article>
            <hr />
            <?php
                }
            }
            ?>
        </section>
        <section>
            <h3>Career</h3>
            <?php
            foreach($articles as $article) {
                if($article["category"] == "Career") {
            ?>
            <article>
                <h4><?= $article["title"] ?></h4>
                <div>
                    <a href="edit-article.php?id=<?= $article["id"] ?>">Edit</a>
                    <?php
                    if($_SESSION['role'] == 1) {
                    ?>
                    | <a href="delete-article.php?id=<?= $article["id"] ?>">Delete</a>
                    <?php } ?>
                </div>
                <img src="<?= $article["image"]?>" alt="placeholder image" />
                <div>By <?= $article["firstName"] . " " . $article["lastName"]?></div>
                <p><?= $article["preview"] ?></p>
                <a href="<?= $article['url'] ?>">Go to article</a>
            </article>
            <hr />
            <?php
                }
            }
            ?>
        </section>
    </section> <!-- end of article section-->

    <aside>
        <h2>Site Visitors</h2>
        <table class="table center">
            <tr>
                <th>May</th>
                <th>June</th>
                <th>July</th>
                <th>August</th>
                <th>September</th>
                <th>October</th>
            </tr>
            <tr>
                <td>115</td>
                <td>230</td>
                <td>50</td>
                <td>80</td>
                <td>150</td>
                <td>209</td>
            </tr>
        </table>
    </aside>
</main>
<?php
    include_once("footer.php");
} else {
    header("Location: login.php");
}
?>
