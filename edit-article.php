<?php
    session_start();
    if (($_SESSION['role'] == 1) || ($_SESSION['role'] == 2)) {
    include_once("database.php");
    include_once("header.php");
    $id = $_GET['id'];
    $stmt = $pdo->prepare("SELECT a.`id`, `title`, `authorId`, `preview`, `content`, `category`, `image`, `url`, `isFeatured`, `firstName`, `lastName` FROM `articles` a
                                    JOIN `users` u ON a.`authorId` = u.`id`
                                    JOIN `categories` c ON a.`categoryId` = c.`id`
                                    WHERE a.id='$id'");
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    $c = $pdo->prepare("SELECT * FROM `categories`");
    $c->execute();
    $categories = $c->fetchAll(PDO::FETCH_ASSOC);
    if ($_SESSION['role'] == 1) {
        $u = $pdo->prepare("SELECT * FROM `users`");
        $u->execute();
        $users = $u->fetchAll(PDO::FETCH_ASSOC);
    } else {
        $username = $_SESSION['username'];
        $u = $pdo->prepare("SELECT * FROM `users` WHERE (`username` = '$username')");
        $u->execute();
        $user = $u->fetch(PDO::FETCH_ASSOC);
    }
?>


<h2>Edit Article</h2>
<form action="process-edit-article.php" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?= $row["id"] ?>" />
    <div>
        <label for="title">Title</label>
        <input type="title" id="title" name="title" value="<?= $row["title"] ?>" />
    </div>
    <?php
    if ($_SESSION["role"] == 1) {
    ?>
    <div>
        <label for="authorId">Author</label>
        <select name="authorId">
            <?php foreach($users as $user) { ?>
                <option value="<?= $user["id"] ?>" <?php if($row['authorId'] == $user["id"]) { echo("selected"); } ?> ><?= $user["firstName"] . ' ' . $user["lastName"] ?></option>
            <?php } ?>
        </select>
    </div>
    <?php
    } else {
    ?>
        <input type="hidden" id="authorId" name="authorId" value="<?= $user["id"] ?>" />
        <p>Author: <?= $row["firstName"] . ' ' . $row["lastName"] ?></p>
    <?php } ?>
    <div>
        <label for="preview">Preview</label>
        <textarea id="preview" name="preview" cols="150" rows="4"><?= $row["preview"] ?></textarea>
    </div>
    <div>
        <label for="content">Content</label>
        <textarea id="content" name="content" cols="150" rows="10"><?= htmlspecialchars($row["content"]) ?></textarea>
    </div>
    <div>
        <label>Category</label>
        <select name="categoryId">
            <option>---</option>
            <?php foreach($categories as $category) { ?>
                <option value="<?= $category["id"] ?>" <?php if($row['category'] == $category["category"]) { echo("selected"); } ?> ><?= $category["category"] ?></option>
            <?php } ?>
        </select>
    </div>
    <div>
        <label for="image">Article Image</label>
        <input type='file' id="image" name='image' />
        <div><?= $row["image"] ?></div>
    </div>
    <div>
        <label for="url">External url</label>
        <input type="text" id="url" name="url" value="<?= $row["url"] ?>" />
    </div>
    <?php
    if ($_SESSION["role"] == 1) {
    ?>
    <div>
        <label>Is Featured</label>
            <input type="radio" id="featured-yes" name="isFeatured" value="1" <?php if($row['isFeatured'] === "1") { echo("checked"); } ?> />
            <label for="featured-yes">Yes</label>
            <input type="radio" id="featured-no" name="isFeatured" value="0" <?php if($row['isFeatured'] === "0") { echo("checked"); } ?> />
            <label for="featured-no">No</label>
    </div>
    <?php } ?>
    <button>Save</button>
</form>

<?php
include_once("footer.php");
} else {
    header("Location: index.php");
}
?>
