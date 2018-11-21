<?php
    session_start();
    include_once("database.php");
    include_once("header.php");
    $id = $_GET['id'];
    $stmt = $pdo->prepare("SELECT * FROM `sections` s
                                    JOIN `pages` p ON s.`pageId` = p.`id`
                                    WHERE s.id='$id'");
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
?>


<h2>Edit <?= $row["page"] ?> section</h2>
<form action="process-edit-section.php" method="post">
    <input type="hidden" name="id" value="<?= $row["id"] ?>" />
    <div>
        <label for="title">Title</label>
        <input type="title" id="title" name="title" value="<?= $row["title"] ?>" />
    </div>
    <div>
        <label for="subtitle">Subtitle</label>
        <input type="text" id="subtitle" name="subtitle" value="<?= $row["subtitle"] ?>" />
    </div>
    <div>
        <label for="content">Content</label>
        <textarea id="content" name="content" cols="50" rows="6"><?= htmlspecialchars($row["content"]) ?></textarea>
    </div>
    <button>Save</button>
</form>

<?php
include_once("footer.php");
?>
