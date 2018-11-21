<footer>
    <p>
        <div>This website uses cookies in order to ensure the best experience. Please accept cookies for optimal performance.</div>
        <div><a href="#">Yes, I accept cookies.</a></div>
    </p>


    <?php
        if ($_SESSION['logged-in']) {
            echo("<div><a href='logout.php'>Logout</a></div>");
        } else {
            echo("<div><a href='login.php'>Login</a> | <a href='register.php'>Register</a></div>");
        }
    ?>
</footer>
<script src="<?= ROOT_URI ?>js/main.js" charset="utf-8" type="text/javascript"></script>
</body>
</html>
