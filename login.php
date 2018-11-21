<?php
    include_once("header.php");
?>
<main>
    <h2>Login</h2>
    <form action="process-login.php" method="POST">
        <div>
            <label for="login-user">Username: </label>
            <input type="text" id="login-user" name="login-user" autofocus="true" />
            <span id="login-errUser"></span>
        </div>
        <div>
            <label for="login-pass">Password: </label>
            <input type="password" id="login-pass" name="login-pass" />
            <span id="login-errPass"></span>
        </div>
        <button>Submit</button>
    </form>
</main>
<?php
    include_once("footer.php");
?>
