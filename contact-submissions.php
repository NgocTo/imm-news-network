<?php
    session_start();
    include_once("header.php");
    include_once("database.php");
    $stmt = $pdo->prepare("SELECT * FROM `contact` c JOIN `roles` r ON c.`role` = r.`id`");
    $stmt->execute();
    $submissions = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

<main>
    <h2>Contact Submissions</h2>
    <?php
        foreach($submissions as $submission) {
    ?>
    <div>
        <p>Name: <?= $submission['firstName'] . ' ' . $submission['lastName'] ?></p>
        <p>Email: <?= $submission['email'] ?></p>
        <p>Interest:
            <?php
            if ($submission['interestIndustry'] == 1) {
                echo (' Industry');
            }
            if ($submission['interestTechnical'] == 1) {
                echo (' Technical');
            }
            if ($submission['interestCareer'] == 1) {
                echo (' Career');
            }
            ?>
        </p>
        <p>Role: <?= $submission['role'] ?></p>
        <p>Username: <?= $submission['email'] ?></p>
        <hr />
    </div>
    <?php } ?>
</main>
<?php
    include_once("footer.php");
?>
