<?php
    session_start();
    include_once("header.php");
    include_once("database.php");
    $stmt = $pdo->prepare("SELECT a.`id`, `title`, `authorId`, `preview`, `content`, `category`, `image`, `url`, `isFeatured`, `firstName`, `lastName` FROM `articles` a
                                    JOIN `users` u ON a.`authorId` = u.`id`
                                    JOIN `categories` c ON a.`categoryId` = c.`id`");
    $stmt->execute();
    $articles = $stmt->fetchAll(PDO::FETCH_ASSOC);

    $s = $pdo->prepare("SELECT * FROM `sections` WHERE `pageId` = 1");
    $section = $s->execute();
    $section = $s->fetch(PDO::FETCH_ASSOC);

    $user = $_SESSION['userId'];
    $l = $pdo->prepare("SELECT * FROM `users-articles` WHERE `user` = '$user'");
    $l->execute();
    $likes = $l->fetchAll(PDO::FETCH_ASSOC);
?>

<main>
    <section class="center">
        <h2><?= $section["title"]?></h2>
        <p><?= $section["content"]?></p>
    </section>
    <section>
        <h2 class="hidden">Article section</h2>
            <?php
            foreach($articles as $article) {
                if ($article["isFeatured"] == 1) {
            ?>
                <article id="featured-section">
                    <h3 class="hidden">Featured article</h3>
                    <h4><?= $article["title"]?></h4>
                    <?php
                    if ($_SESSION['logged-in']) {
                    ?>
                    <form action="process-like.php" method="post">
                        <input type="hidden" name="articleId" value="<?= $article['id'] ?>" />
                        <?php
                        $value = "";
                        foreach($likes as $like) {
                            if ($article['id'] !== $like["article"]){
                                $value = "Like";
                            } else {
                                $value = "Unlike";
                            }
                        }
                        if ($value == "Like") {
                            echo("<button>Like</button>");
                        } else {
                            echo("<button>Unlike</button>");
                        }
                        ?>
                    </form>
                    <?php } ?>
                    <img src="<?= $article["image"]?>" alt="placeholder image" />
                    <div>By <?= $article["firstName"] . " " . $article["lastName"]?></div>
                    <p><?= $article["preview"]?></p>
                    <a href="articles/article.php?id=<?= $article['id'] ?>">Go to full article</a>
                </article>
            <?php
                }
            }
            ?>
        <section class="article-section">
            <h3>Industry</h3>
            <?php
            foreach($articles as $article) {
                if($article["category"] == "Industry") {
            ?>
            <hr />
            <article>
                <h4><?= $article["title"]?></h4>
                <?php
                if ($_SESSION['logged-in']) {
                ?>
                <form action="process-like.php" method="post">
                    <input type="hidden" name="articleId" value="<?= $article['id'] ?>" />
                    <?php
                    $value = "";
                    foreach($likes as $like) {
                        if ($article['id'] !== $like["article"]){
                            $value = "Like";
                        } else {
                            $value = "Unlike";
                        }
                    }
                    if ($value == "Like") {
                        echo("<button>Like</button>");
                    } else {
                        echo("<button>Unlike</button>");
                    }
                    ?>
                </form>
                <?php } ?>
                <img src="<?= $article["image"]?>" alt="placeholder image" />
                <div id="auth-industry">By <?= $article["firstName"] . " " . $article["lastName"]?></div>
                <p><?= $article["preview"]?></p>
                <a href="articles/article.php?id=<?= $article['id'] ?>">Go to full article</a>
            </article>
            <?php
                }
            }
            ?>
        </section>
        <section class="article-section">
            <h3>Technical</h3>
            <?php
            foreach($articles as $article) {
                if($article["category"] == "Technical") {
            ?>
            <hr />
            <article>
                <h4><?= $article["title"]?></h4>
                <?php
                if (($_SESSION['role'] == 1) || ($_SESSION['role'] == 2)) {
                ?>
                <form action="process-like.php" method="post">
                    <input type="hidden" name="articleId" value="<?= $article['id'] ?>" />
                    <?php
                    $value = "";
                    foreach($likes as $like) {
                        if ($article['id'] !== $like["article"]){
                            $value = "Like";
                        } else {
                            $value = "Unlike";
                        }
                    }
                    if ($value == "Like") {
                        echo("<button>Like</button>");
                    } else {
                        echo("<button>Unlike</button>");
                    }
                    ?>
                </form>
                <?php } ?>
                <img src="<?= $article["image"]?>" alt="placeholder image" />
                <div id="tech-career">By <?= $article["firstName"] . " " . $article["lastName"]?></div>
                <p><?= $article["preview"]?></p>
                <a href="articles/article.php?id=<?= $article['id'] ?>">Go to full article</a>
            </article>
            <?php
                }
            }
            ?>
        </section>
        <section class="article-section">
            <h3>Career</h3>
            <?php
            foreach($articles as $article) {
                if($article["category"] == "Career") {
            ?>
            <hr />
            <article>
                <h4><?= $article["title"] ?></h4>
                <?php
                if (($_SESSION['role'] == 1) || ($_SESSION['role'] == 2)) {
                ?>
                <form action="process-like.php" method="post">
                    <input type="hidden" name="articleId" value="<?= $article['id'] ?>" />
                    <?php
                    $value = "";
                    foreach($likes as $like) {
                        if ($article['id'] !== $like["article"]){
                            $value = "Like";
                        } else {
                            $value = "Unlike";
                        }
                    }
                    if ($value == "Like") {
                        echo("<button>Like</button>");
                    } else {
                        echo("<button>Unlike</button>");
                    }
                    ?>
                </form>
                <?php } ?>
                <img src="<?= $article["image"]?>" alt="placeholder image" />
                <div id="auth-career">By <?= $article["firstName"] . " " . $article["lastName"]?></div>
                <p><?= $article["preview"] ?></p>
                <a href="articles/article.php?id=<?= $article['id'] ?>">Go to full article</a>
            </article>
            <?php
                }
            }
            ?>
        </section>
    </section> <!-- end of article section-->

    <section class="center">
        <h3>ZIM News - ZIM NIO</h3>
        <div class="resp-container">
            <iframe class="resp-iframe" src="https://www.youtube.com/embed/ol60y0KNMyk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </section>
    <aside class="center">
        <h3>Site Visitors</h3>
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
?>
