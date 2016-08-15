<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Pump19 &#124; {{ subtitle }}</title>
    <link rel="icon" type="image/gif" href="data:image/gif;base64,R0lGODlhEAAQAOMJAAABACcgFkE2IllMMnJiQop3Uf92AP+pAP/MBv///////////////////////////yH5BAEKAA8ALAAAAAAQABAAAARf8MkHqrVzAjGIJ0UIZNvQfZ4olSeajhQ3CEFN0HVRyYNxGAGCD6gDBAScA+IQGCiZRRpnaBoKokeTidfRxTgfpODj3cgIrZP3a6q5QeuYKVWgw9jdkIqEVO8zFBcYEhEAOw==">

    <link rel="stylesheet" href="/static/css/min.css">
  </head>
  <body>
    <header class="fixed">
      <nav class="top-bar" data-topbar role="navigation">
        <ul class="title-area">
          <li class="name">
            <h1><a href="/"><i class="fa fa-twitch"></i>&nbsp;Pump19</a></h1>
          </li>
          <li class="toggle-topbar"><a href="#"><i class="fa fa-bars"></i>&nbsp;Menu</a></li>
        </ul>

        <section class="top-bar-section">
          <ul class="left">
            <li{{!" class=\"active\"" if get("active") == "commands" else ""}}>
              <a href="/commands"><i class="fa fa-keyboard-o"></i>&nbsp;Commands</a>
            </li>
            <li{{!" class=\"active\"" if get("active") == "codefall" else ""}}>
              <a href="/codefall"><i class="fa fa-gift"></i>&nbsp;Codefall</a>
            </li>
            <li{{!" class=\"active\"" if get("active") == "bingo" else ""}}>
              <a href="/bingo"><i class="fa fa-puzzle-piece"></i>&nbsp;Trope Bingo</a>
            </li>
            <li{{!" class=\"active\"" if get("active") == "contribute" else ""}}>
              <a href="/contribute"><i class="fa fa-code-fork"></i>&nbsp;Contribute</a>
            </li>
          </ul>

          <ul class="right">
          % if session.get("logged_in", False):
            <li>
              <a href="/logout">
                <i class="fa fa-sign-out"></i>&nbsp;Log out
                (<strong>{{session.get("user_name")}}</strong>)
              </a>
            </li>
          % else:
            <li{{!" class=\"active\"" if get("active") == "login" else ""}}>
              <a href="/login"><i class="fa fa-sign-in"></i>&nbsp;Log in</a>
            </li>
          % end
          </ul>
        </section>
      </nav>
    </header>

    {{!base}}

    <footer class="text-center">
      <div class="row">
        <div class="small-11 small-centered columns">
          <small>
            Powered by
            <a href="http://foundation.zurb.com/">Foundation</a>
            and
            <a href="https://fortawesome.github.io/Font-Awesome/"><i class="fa fa-flag"></i>&nbsp;Font Awesome</a>
          </small>
        </div>
      </div>
      <div class="row">
        <div class="small-11 small-centered columns">
        <small>&copy; 2015-2016 Twisted Pear</small>
        </div>
      </div>
    </footer>

    <!-- JS components -->
    <script src="/static/js/min.js"></script>
    % if defined("js_inject"):
      {{! js_inject }}
    % end
  </body>
</html>
