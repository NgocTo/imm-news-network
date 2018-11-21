<?php
    include_once("header.php");
?>
<main>
    <h2>Register</h2>
    <form action="process-register.php" method="POST">
        <div>
            <label for="register-first">First Name: </label>
            <input type="text" id="register-first" name="register-first" placeholder="Enter your first name..." autofocus="true" />
            <span id="register-errFirst"></span>
        </div>
        <div>
            <label for="register-last">Last Name: </label>
            <input type="text" id="register-last" name="register-last" placeholder="Enter your last name..."/>
            <span id="register-errLast"></span>
        </div>
        <div>
            <label for="register-user">* Username: </label>
            <input type="text" id="register-user" name="register-user" required />
            <span id="register-errUser"></span>
        </div>
        <div>
            <label for="register-pass">* Password: </label>
            <input type="password" id="register-email" name="register-pass" required />
            <span id="register-errPass"></span>
        </div>
        <div>
            <label>Your role: </label>
            <input type="radio" id="register-role--contributor" name="register-role" value="3" checked="checked" />
            <label for="register-role--contributor">Contributor</label>
            <input type="radio" id="register-role--author" name="register-role"  value="2"/>
            <label for="register-role--author">Author</label>
            <span id="register-errRole"></span>
        </div>
        <button>Submit</button>
    </form>
</main>
<?php
    include_once("footer.php");
?>
