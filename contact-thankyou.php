<?php
    include_once("header.php");
    include_once("database.php");
    $stmt = $pdo->prepare("SELECT * FROM `sections`");
    $stmt->execute();
    $results = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<main class="center">
<p>Your form has been submitted. Thank you for contacting us</p>
<p><a href="index.php">Back to homepage</a></p>
</main>

<?php
    include_once("footer.php");
?>
