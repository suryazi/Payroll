<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="layout" content="main">
    <title>Sign in &middot; Payroll</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    
    <style type="text/css">
      body {
        padding-top: 75px;
        padding-bottom: 75px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
      .message{
        text-align: center;
      }

    </style>
    
  </head>

  <body>
    <g:if test="${flash.message}">
      <div class="message">${flash.message}</div>
    </g:if>

    <div class="container">

      <form class="form-signin" action="signIn">
      <input type="hidden" name="targetUri" value="${targetUri}" />
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" name="username" value="${username}" class="input-block-level" placeholder="UserName">
        <input type="password" name="password" value=""  class="input-block-level" placeholder="Password">
        <label class="checkbox">
          <input type="checkbox" name="rememberMe" value="${rememberMe}" > Remember me
        </label>
        <button class="btn btn-large btn-primary" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->


  </body>
</html>
