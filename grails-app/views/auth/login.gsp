<!DOCTYPE html>
<html lang="en">
  <head>
    
    <meta name="layout" content="login">
    
    
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
