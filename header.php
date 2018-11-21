<?php
\define('DS', DIRECTORY_SEPARATOR);
\define('ROOT', \dirname(\dirname(__DIR__)));
\define('ROOT_URI', '/webdev/A1/');
$_SESSION['role'] = $_SESSION['userId'] = "";
$_SESSION['logged-in'] = false;
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="description" content="This is assignment 1 for in Sheridan about Interactive Media Management News Network" />
        <title>IMM News Network</title>
        <link rel="icon" href="<?=ROOT_URI?>img/favicon.png" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<?=ROOT_URI?>css/main.css">

    </head>
    <body>
        <header>
            <a href="<?=ROOT_URI?>"><img src="<?=ROOT_URI?>img/logo.jpg" alt="logo" id="logo"/></a>
            <h1 id="heading">IMM News Network</h1>
            <nav id="navigation">
                <h2 class="hidden">Main navigation</h2>
                <ul>
                    <li><a href="<?=ROOT_URI?>index.php">Home</a></li>
                    <li><a href="<?=ROOT_URI?>about.php">About</a></li>
                    <?php
                    if ($_SESSION['role'] == 1) {
                    ?>
                    <li><a href="#" class="hidden">Contact</a>
                        <ul>
                            <li><a href="<?=ROOT_URI?>contact.php">Contact Form</a></li>
                            <li><a href="<?=ROOT_URI?>contact-submissions.php">Contact Sumissions</a></li>
                        </ul>
                    </li>
                    <?php
                    } else {
                    ?>
                    <li><a href="<?=ROOT_URI?>contact.php">Contact</a></li>
                    <?php
                    }
                    ?>

                    <?php
                    if (($_SESSION['role'] == 1) || ($_SESSION['role'] == 2)) {
                    ?>
                        <li><a href='<?=ROOT_URI?>dashboard.php'>Dashboard</a></li>
                    <?php } ?>
                </ul>
            </nav>
        </header>
