<?php
session_start();
if (($_SESSION['role'] == 1) || ($_SESSION['role'] == 2)) {
    include_once("database.php");
    include_once("header.php");
    if ($_SESSION['role'] == 1) {
        $stmt = $pdo->prepare("SELECT * FROM `users`");
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    } else {
        $username = $_SESSION['username'];
        $stmt = $pdo->prepare("SELECT * FROM `users` WHERE (`username` = '$username')");
        $stmt->execute();
        $user = $stmt->fetch(PDO::FETCH_ASSOC);
    }
    $c = $pdo->prepare("SELECT * FROM `categories`");
    $c->execute();
    $categories = $c->fetchAll(PDO::FETCH_ASSOC);
?>


<h2>Add new Article</h2>
<form action="process-add-article.php" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" />
    <div>
        <label for="title">Title</label>
        <input type="title" id="title" name="title" />
    </div>
    <?php
    if ($_SESSION["role"] == 1) {
    ?>
    <div>
        <label for="authorId">Author</label>
        <select name="authorId">
            <?php foreach($users as $user) { ?>
                <option value="<?= $user["id"] ?>"><?= $user["firstName"] . ' ' . $user["lastName"] ?></option>
            <?php } ?>
        </select>
    </div>
    <?php
    } else {
    ?>
        <input type="hidden" id="authorId" name="authorId" value="<?= $user["id"] ?>" />
        <p>Author: <?= $user["firstName"] . ' ' . $user["lastName"] ?></p>
    <?php } ?>
    <div>
        <label for="preview">Preview</label>
        <textarea id="preview" name="preview" cols="150" rows="4"></textarea>
    </div>
    <div>
        <label for="content">Content</label>
        <textarea id="content" name="content" cols="150" rows="10"></textarea>
    </div>
    <div>
        <label>Category</label>
        <select name="categoryId">
            <option>---</option>
            <?php foreach($categories as $category) { ?>
                <option value="<?= $category["id"] ?>"><?= $category["category"] ?></option>
            <?php } ?>
        </select>
    </div>
    <div>
        <label for="image">Article Image</label>
        <input type='file' id="image" name='image' />
    </div>
    <div>
        <label for="url">External url</label>
        <input type="text" id="url" name="url" />
    </div>
    <?php
    if ($_SESSION["role"] == 1) {
    ?>
    <div>
        <label>Is Featured</label>
            <input type="radio" id="featured-yes" name="isFeatured" value="1" />
            <label for="featured-yes">Yes</label>
            <input type="radio" id="featured-no" name="isFeatured" value="0" checked />
            <label for="featured-no">No</label>
    </div>
    <?php } ?>
    <button>Submit</button>
</form>

<?php
include_once("footer.php");
} else {
    header("Location: index.php");
}
?>
