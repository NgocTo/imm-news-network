<?php
    session_start();
    include_once("header.php");
?>

<main>
    <h2>Contact Us</h2>
    <form action="process-contact.php" method="POST">
        <div>
            <label for="contact-first">* First name: </label>
            <input type="text" id="contact-first" name="contact-first" placeholder="Enter your first name" autofocus="true" required />
            <span id="contact-errFirst"></span>
        </div>
        <div>
            <label for="contact-last">* Last name: </label>
            <input type="text" id="contact-last" name="contact-last" placeholder="Enter your last name" required />
            <span id="contact-errLast"></span>
        </div>
        <div>
            <label for="contact-email">* Email: </label>
            <input type="email" id="contact-email" name="contact-email" placeholder="email@example.com" />
            <span id="contact-errMail"></span>
        </div>
        <div>
            <label>Category interests: </label>

            <input type="checkbox" name="contact-interest--industry" id="contact-interest--industry" value="1" />
            <label for="contact-interest--industry">Industry</label>

            <input type="checkbox" name="contact-interest--technical" id="contact-interest--technical" value="1" />
            <label for="contact-interest--technical">Technical</label>

            <input type="checkbox" name="contact-interest--career" id="contact-interest--career" value="1" />
            <label for="contact-interest--career">Career</label>

            <span id="contact-errInterest"></span>
        </div>
        <div>
            <label for="contact-role">Your role: </label>
            <input type="radio" name="contact-role" id="contact-role--writer" value="2" <?php if($_SESSION['role'] === "2") { echo("checked"); } ?> />
            <label for="contact-role--writer">Writer</label>

            <input type="radio" name="contact-role" id="contact-role--contributor" value="3" <?php if($_SESSION['role'] === "3") { echo("checked"); } ?> />
            <label for="contact-role--contributor">Contributor</label>

            <input type="radio" name="contact-role" id="contact-role--administrator" value="1" <?php if($_SESSION['role'] === "1") { echo("checked"); } ?> />
            <label for="contact-role--administrator">Administrator</label>

            <span id="contact-errRole"></span>
        </div>
        <button>Submit</button>
    </form>
</main>


<?php
    include_once("footer.php");
?>
