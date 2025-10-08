<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Instagram Login</title>
<style>
  body {
    background: #fafafa;
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
  }

  .login-container {
    background: white;
    border: 1px solid #ddd;
    padding: 40px 40px 30px;
    width: 350px;
    text-align: center;
  }

  .login-container img {
    margin-bottom: 20px;
    width: 175px;
  }

  input[type="text"], input[type="password"] {
    width: 100%;
    padding: 10px 8px;
    margin: 6px 0 12px;
    border: 1px solid #ddd;
    border-radius: 3px;
    font-size: 14px;
  }

  button {
    width: 100%;
    padding: 10px 0;
    background-color: #0095f6;
    border: none;
    border-radius: 3px;
    color: white;
    font-weight: bold;
    font-size: 14px;
    cursor: pointer;
  }

  button:hover {
    background-color: #007ac1;
  }

  .divider {
    display: flex;
    align-items: center;
    margin: 20px 0;
    font-size: 13px;
    color: #8e8e8e;
  }

  .divider::before, .divider::after {
    content: "";
    flex-grow: 1;
    background: #ddd;
    height: 1px;
    margin: 0 10px;
  }

  a {
    text-decoration: none;
    color: #0095f6;
    font-weight: 600;
    font-size: 14px;
  }

  .forgot-password {
    margin-top: 12px;
    font-size: 12px;
  }

  .signup-container {
    margin-top: 20px;
    padding: 20px;
    border: 1px solid #ddd;
    background: white;
    width: 350px;
    text-align: center;
    font-size: 14px;
  }

</style>
</head>
<body>

<div>
  <div class="login-container">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/1200px-Instagram_logo_2022.svg.png" alt="Instagram Logo" />
    <form>
      <input type="text" placeholder="Phone number, username, or email" required />
      <input type="password" placeholder="Password" required />
      <button type="submit">Log In</button>
    </form>

    <div class="forgot-password">
      <a href="#">Forgot password?</a>
    </div>

    <div class="divider">OR</div>

    <a href="#"><strong>Log in with Facebook</strong></a>
  </div>

  <div class="signup-container">
    Don't have an account? <a href="#">Sign up</a>
  </div>
</div>

</body>
</html>
