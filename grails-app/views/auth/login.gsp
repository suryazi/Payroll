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
        <input type="email" name="username" value="${username}" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" name="rememberMe" value="${rememberMe}"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->


  </body>
</html>
