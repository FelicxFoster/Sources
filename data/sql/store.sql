



<!DOCTYPE html>
<html lang="en" class=" is-copy-enabled is-u2f-enabled">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/frameworks-3c1694fab1568340f2e75b26efa1f55d97c5153364a7357e9e1104c718ff1a2f.css" integrity="sha256-PBaU+rFWg0Dy51sm76H1XZfFFTNkpzV+nhEExxj/Gi8=" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-3e95d73eb454e0099947df00d91ab0dbfc6b10be69dd5daf5de7aeb676580d20.css" integrity="sha256-PpXXPrRU4AmZR98A2Rqw2/xrEL5p3V2vXeeutnZYDSA=" media="all" rel="stylesheet" />
    
    
    
    

    <link as="script" href="https://assets-cdn.github.com/assets/frameworks-851de55546d87ad786f3efef3b5634f8f8a40d67fa6d44f854d9e99767e9c9a2.js" rel="preload" />
    
    <link as="script" href="https://assets-cdn.github.com/assets/github-9a6de3c5d3dd93cd9d6638a6d1bcc27eb7cbf9afdd082771ea900f9996597a24.js" rel="preload" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=1020">
    
    
    <title>Source-Code-from-Tutorials/store.sql at master · buckyroberts/Source-Code-from-Tutorials</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="https://avatars2.githubusercontent.com/u/8547538?v=3&amp;s=400" name="twitter:image:src" /><meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="buckyroberts/Source-Code-from-Tutorials" name="twitter:title" /><meta content="Source-Code-from-Tutorials - Here is the source code from all of my tutorials." name="twitter:description" />
      <meta content="https://avatars2.githubusercontent.com/u/8547538?v=3&amp;s=400" property="og:image" /><meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="buckyroberts/Source-Code-from-Tutorials" property="og:title" /><meta content="https://github.com/buckyroberts/Source-Code-from-Tutorials" property="og:url" /><meta content="Source-Code-from-Tutorials - Here is the source code from all of my tutorials." property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="web-socket" href="wss://live.github.com/_sockets/MTUwMjYwMTk6YTQ5NjEzNmExMGZhY2FhZTdjNTA0M2EyYjI0NTVkYzM6MTcwZDY5NDE2NjMzNTBhYjFlOTQyNmFlY2ZlYjk5YzU0NTBhMGNjNTY0ODgxMjFiNmFiNWViMzNkMjhmMjcwYg==--d17dca2d74301af62e9ac0b470140e5172976f5c">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
<meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="3DB5F944:2D09:5442E0F:57395B70" name="octolytics-dimension-request_id" /><meta content="15026019" name="octolytics-actor-id" /><meta content="suqingdong" name="octolytics-actor-login" /><meta content="10ddc11fb66d5c3b086ffed8e5d548990c2a0716de0225bfb59c09b554b8ebef" name="octolytics-actor-hash" />
<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />



  <meta class="js-ga-set" name="dimension1" content="Logged In">



        <meta name="hostname" content="github.com">
    <meta name="user-login" content="suqingdong">

        <meta name="expected-hostname" content="github.com">
      <meta name="js-proxy-site-detection-payload" content="MDhjOTI3MTBlNGEwZTJjOTA0YWI2Y2ZiYWI4YTQ2ZTA1MzRhMjJkOTQ3MGVkZTViYTQwY2UyNThkOGU1MjFkY3x7InJlbW90ZV9hZGRyZXNzIjoiNjEuMTgxLjI0OS42OCIsInJlcXVlc3RfaWQiOiIzREI1Rjk0NDoyRDA5OjU0NDJFMEY6NTczOTVCNzAiLCJ0aW1lc3RhbXAiOjE0NjMzNzY3NTN9">


      <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#4078c0">
      <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

    <meta content="f9e544e0c28fb96a5193ba0e590f56c48fe429c5" name="form-nonce" />

    <meta http-equiv="x-pjax-version" content="a4cb11b734331d95088899b1377fb05e">
    

      
  <meta name="description" content="Source-Code-from-Tutorials - Here is the source code from all of my tutorials.">
  <meta name="go-import" content="github.com/buckyroberts/Source-Code-from-Tutorials git https://github.com/buckyroberts/Source-Code-from-Tutorials.git">

  <meta content="8547538" name="octolytics-dimension-user_id" /><meta content="buckyroberts" name="octolytics-dimension-user_login" /><meta content="31442740" name="octolytics-dimension-repository_id" /><meta content="buckyroberts/Source-Code-from-Tutorials" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="31442740" name="octolytics-dimension-repository_network_root_id" /><meta content="buckyroberts/Source-Code-from-Tutorials" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/buckyroberts/Source-Code-from-Tutorials/commits/master.atom" rel="alternate" title="Recent Commits to Source-Code-from-Tutorials:master" type="application/atom+xml">


      <link rel="canonical" href="https://github.com/buckyroberts/Source-Code-from-Tutorials/blob/master/Other/SampleMySQLData/store.sql" data-pjax-transient>
  </head>


  <body class="logged-in   env-production windows vis-public page-blob">
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"></div>
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>

    
    
    



        <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <svg aria-hidden="true" class="octicon octicon-mark-github" height="28" version="1.1" viewBox="0 0 16 16" width="28"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59 0.4 0.07 0.55-0.17 0.55-0.38 0-0.19-0.01-0.82-0.01-1.49-2.01 0.37-2.53-0.49-2.69-0.94-0.09-0.23-0.48-0.94-0.82-1.13-0.28-0.15-0.68-0.52-0.01-0.53 0.63-0.01 1.08 0.58 1.23 0.82 0.72 1.21 1.87 0.87 2.33 0.66 0.07-0.52 0.28-0.87 0.51-1.07-1.78-0.2-3.64-0.89-3.64-3.95 0-0.87 0.31-1.59 0.82-2.15-0.08-0.2-0.36-1.02 0.08-2.12 0 0 0.67-0.21 2.2 0.82 0.64-0.18 1.32-0.27 2-0.27 0.68 0 1.36 0.09 2 0.27 1.53-1.04 2.2-0.82 2.2-0.82 0.44 1.1 0.16 1.92 0.08 2.12 0.51 0.56 0.82 1.27 0.82 2.15 0 3.07-1.87 3.75-3.65 3.95 0.29 0.25 0.54 0.73 0.54 1.48 0 1.07-0.01 1.93-0.01 2.2 0 0.21 0.15 0.46 0.55 0.38C13.71 14.53 16 11.53 16 8 16 3.58 12.42 0 8 0z"></path></svg>
</a>


        <div class="header-search scoped-search site-scoped-search js-site-search" role="search">
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/buckyroberts/Source-Code-from-Tutorials/search" class="js-site-search-form" data-scoped-search-url="/buckyroberts/Source-Code-from-Tutorials/search" data-unscoped-search-url="/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <label class="form-control header-search-wrapper js-chromeless-input-container">
      <div class="header-search-scope">This repository</div>
      <input type="text"
        class="form-control header-search-input js-site-search-focus js-site-search-field is-clearable"
        data-hotkey="s"
        name="q"
        placeholder="Search"
        aria-label="Search this repository"
        data-unscoped-placeholder="Search GitHub"
        data-scoped-placeholder="Search"
        tabindex="1"
        autocapitalize="off">
    </label>
</form></div>


      <ul class="header-nav left" role="navigation">
        <li class="header-nav-item">
          <a href="/pulls" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:pulls context:user" data-hotkey="g p" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls">
            Pull requests
</a>        </li>
        <li class="header-nav-item">
          <a href="/issues" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:issues context:user" data-hotkey="g i" data-selected-links="/issues /issues/assigned /issues/mentioned /issues">
            Issues
</a>        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com/" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item">
    
    <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s js-socket-channel js-notification-indicator" data-channel="notification-changed-v2:15026019" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
        <span class="mail-status "></span>
        <svg aria-hidden="true" class="octicon octicon-bell" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M14 12v1H0v-1l0.73-0.58c0.77-0.77 0.81-2.55 1.19-4.42 0.77-3.77 4.08-5 4.08-5 0-0.55 0.45-1 1-1s1 0.45 1 1c0 0 3.39 1.23 4.16 5 0.38 1.88 0.42 3.66 1.19 4.42l0.66 0.58z m-7 4c1.11 0 2-0.89 2-2H5c0 1.11 0.89 2 2 2z"></path></svg>
</a>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link tooltipped tooltipped-s js-menu-target" href="/new"
       aria-label="Create new…"
       data-ga-click="Header, create new, icon:add">
      <svg aria-hidden="true" class="octicon octicon-plus left" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 9H7v5H5V9H0V7h5V2h2v5h5v2z"></path></svg>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <ul class="dropdown-menu dropdown-menu-sw">
        
<a class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
  New repository
</a>

  <a class="dropdown-item" href="/new/import" data-ga-click="Header, import a repository">
    Import repository
  </a>


  <a class="dropdown-item" href="/organizations/new" data-ga-click="Header, create new organization">
    New organization
  </a>



  <div class="dropdown-divider"></div>
  <div class="dropdown-header">
    <span title="buckyroberts/Source-Code-from-Tutorials">This repository</span>
  </div>
    <a class="dropdown-item" href="/buckyroberts/Source-Code-from-Tutorials/issues/new" data-ga-click="Header, create new issue">
      New issue
    </a>

      </ul>
    </div>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name tooltipped tooltipped-sw js-menu-target" href="/suqingdong"
       aria-label="View profile and more"
       data-ga-click="Header, show menu, icon:avatar">
      <img alt="@suqingdong" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/15026019?v=3&amp;s=40" width="20" />
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <div class="dropdown-menu  dropdown-menu-sw">
        <div class=" dropdown-header header-nav-current-user css-truncate">
            Signed in as <strong class="css-truncate-target">suqingdong</strong>

        </div>


        <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/suqingdong" data-ga-click="Header, go to profile, text:your profile">
            Your profile
          </a>
        <a class="dropdown-item" href="/stars" data-ga-click="Header, go to starred repos, text:your stars">
          Your stars
        </a>
          <a class="dropdown-item" href="/explore" data-ga-click="Header, go to explore, text:explore">
            Explore
          </a>
          <a class="dropdown-item" href="/integrations" data-ga-click="Header, go to integrations, text:integrations">
            Integrations
          </a>
        <a class="dropdown-item" href="https://help.github.com" data-ga-click="Header, go to help, text:help">
          Help
        </a>


          <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">
            Settings
          </a>

          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/logout" class="logout-form" data-form-nonce="f9e544e0c28fb96a5193ba0e590f56c48fe429c5" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="1rt9XqlW1n1lV/j8P74j7dhwEXoYy70NTa2gQynpF8DzeG7BTBirA/KPVhzVO7KVHnKcmakaPss4q5kA/z54Dw==" /></div>
            <button class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
              Sign out
            </button>
</form>
      </div>
    </div>
  </li>
</ul>


    
  </div>
</div>


      


    <div id="start-of-content" class="accessibility-aid"></div>

      <div id="js-flash-container">
</div>


    <div role="main" class="main-content">
        <div itemscope itemtype="http://schema.org/SoftwareSourceCode">
    <div id="js-repo-pjax-container" data-pjax-container>
      
<div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav">
  <div class="container repohead-details-container">

    

<ul class="pagehead-actions">

  <li>
        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-form-nonce="f9e544e0c28fb96a5193ba0e590f56c48fe429c5" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="a/Br5vW9LBu+O0WjfbkvlCGtz/e3YUawJRDJ/9rwEUJq10zu78uApOHKo21N34zCOCM7xPV7A7mZBmse/q1qWQ==" /></div>      <input class="form-control" id="repository_id" name="repository_id" type="hidden" value="31442740" />

        <div class="select-menu js-menu-container js-select-menu">
          <a href="/buckyroberts/Source-Code-from-Tutorials/subscription"
            class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true"
            data-ga-click="Repository, click Watch settings, action:blob#show">
            <span class="js-select-button">
              <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6c4.94 0 7.94-6 7.94-6S13 2 8.06 2z m-0.06 10c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4z m2-4c0 1.11-0.89 2-2 2s-2-0.89-2-2 0.89-2 2-2 2 0.89 2 2z"></path></svg>
              Watch
            </span>
          </a>
          <a class="social-count js-social-count" href="/buckyroberts/Source-Code-from-Tutorials/watchers">
            143
          </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header js-navigation-enable" tabindex="-1">
              <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48-3.75-3.75-3.75 3.75-1.48-1.48 3.75-3.75L0.77 4.25l1.48-1.48 3.75 3.75 3.75-3.75 1.48 1.48-3.75 3.75z"></path></svg>
              <span class="select-menu-title">Notifications</span>
            </div>

              <div class="select-menu-list js-navigation-container" role="menu">

                <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5L4 13 0 9l1.5-1.5 2.5 2.5 6.5-6.5 1.5 1.5z"></path></svg>
                  <div class="select-menu-item-text">
                    <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                    <span class="select-menu-item-heading">Not watching</span>
                    <span class="description">Be notified when participating or @mentioned.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6c4.94 0 7.94-6 7.94-6S13 2 8.06 2z m-0.06 10c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4z m2-4c0 1.11-0.89 2-2 2s-2-0.89-2-2 0.89-2 2-2 2 0.89 2 2z"></path></svg>
                      Watch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5L4 13 0 9l1.5-1.5 2.5 2.5 6.5-6.5 1.5 1.5z"></path></svg>
                  <div class="select-menu-item-text">
                    <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                    <span class="select-menu-item-heading">Watching</span>
                    <span class="description">Be notified of all conversations.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6c4.94 0 7.94-6 7.94-6S13 2 8.06 2z m-0.06 10c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4z m2-4c0 1.11-0.89 2-2 2s-2-0.89-2-2 0.89-2 2-2 2 0.89 2 2z"></path></svg>
                      Unwatch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5L4 13 0 9l1.5-1.5 2.5 2.5 6.5-6.5 1.5 1.5z"></path></svg>
                  <div class="select-menu-item-text">
                    <input id="do_ignore" name="do" type="radio" value="ignore" />
                    <span class="select-menu-item-heading">Ignoring</span>
                    <span class="description">Never be notified.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-mute" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8 2.81v10.38c0 0.67-0.81 1-1.28 0.53L3 10H1c-0.55 0-1-0.45-1-1V7c0-0.55 0.45-1 1-1h2l3.72-3.72c0.47-0.47 1.28-0.14 1.28 0.53z m7.53 3.22l-1.06-1.06-1.97 1.97-1.97-1.97-1.06 1.06 1.97 1.97-1.97 1.97 1.06 1.06 1.97-1.97 1.97 1.97 1.06-1.06-1.97-1.97 1.97-1.97z"></path></svg>
                      Stop ignoring
                    </span>
                  </div>
                </div>

              </div>

            </div>
          </div>
        </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/buckyroberts/Source-Code-from-Tutorials/unstar" class="starred" data-form-nonce="f9e544e0c28fb96a5193ba0e590f56c48fe429c5" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="4zia/m8tVTJN0Lo+Cc2E3VVubxsHyhK/FtjqXem6FFzqPpbWB9oA2ggBuaHJYfyi30kg+vVWa0GN3pcGpxMf6g==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar buckyroberts/Source-Code-from-Tutorials"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M14 6l-4.9-0.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14l4.33-2.33 4.33 2.33L10.4 9.26 14 6z"></path></svg>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/buckyroberts/Source-Code-from-Tutorials/stargazers">
          488
        </a>
</form>
    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/buckyroberts/Source-Code-from-Tutorials/star" class="unstarred" data-form-nonce="f9e544e0c28fb96a5193ba0e590f56c48fe429c5" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="7XSyuDfCDScJXpwP4s1ECaZj1f/CiA96+s6FueSspYvl0WN9MbmyzIwXP4J5LrLDhJ3aiAGr6xJftTkIcU9Fzg==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star buckyroberts/Source-Code-from-Tutorials"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M14 6l-4.9-0.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14l4.33-2.33 4.33 2.33L10.4 9.26 14 6z"></path></svg>
        Star
      </button>
        <a class="social-count js-social-count" href="/buckyroberts/Source-Code-from-Tutorials/stargazers">
          488
        </a>
</form>  </div>

  </li>

  <li>
          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/buckyroberts/Source-Code-from-Tutorials/fork" class="btn-with-count" data-form-nonce="f9e544e0c28fb96a5193ba0e590f56c48fe429c5" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="XCkJQa61yZ33/wHC7uUB3OQL3Bnp7wwbhUdnVdLvEh4aoTdCwpAtk1Fa5mzoxvnl4+9b/dpOtrmIXtjov8VgJw==" /></div>
            <button
                type="submit"
                class="btn btn-sm btn-with-count"
                data-ga-click="Repository, show fork modal, action:blob#show; text:Fork"
                title="Fork your own copy of buckyroberts/Source-Code-from-Tutorials to your account"
                aria-label="Fork your own copy of buckyroberts/Source-Code-from-Tutorials to your account">
              <svg aria-hidden="true" class="octicon octicon-repo-forked" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path d="M8 1c-1.11 0-2 0.89-2 2 0 0.73 0.41 1.38 1 1.72v1.28L5 8 3 6v-1.28c0.59-0.34 1-0.98 1-1.72 0-1.11-0.89-2-2-2S0 1.89 0 3c0 0.73 0.41 1.38 1 1.72v1.78l3 3v1.78c-0.59 0.34-1 0.98-1 1.72 0 1.11 0.89 2 2 2s2-0.89 2-2c0-0.73-0.41-1.38-1-1.72V9.5l3-3V4.72c0.59-0.34 1-0.98 1-1.72 0-1.11-0.89-2-2-2zM2 4.2c-0.66 0-1.2-0.55-1.2-1.2s0.55-1.2 1.2-1.2 1.2 0.55 1.2 1.2-0.55 1.2-1.2 1.2z m3 10c-0.66 0-1.2-0.55-1.2-1.2s0.55-1.2 1.2-1.2 1.2 0.55 1.2 1.2-0.55 1.2-1.2 1.2z m3-10c-0.66 0-1.2-0.55-1.2-1.2s0.55-1.2 1.2-1.2 1.2 0.55 1.2 1.2-0.55 1.2-1.2 1.2z"></path></svg>
              Fork
            </button>
</form>
    <a href="/buckyroberts/Source-Code-from-Tutorials/network" class="social-count">
      705
    </a>
  </li>
</ul>

    <h1 class="entry-title public ">
  <svg aria-hidden="true" class="octicon octicon-repo" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M4 9h-1v-1h1v1z m0-3h-1v1h1v-1z m0-2h-1v1h1v-1z m0-2h-1v1h1v-1z m8-1v12c0 0.55-0.45 1-1 1H6v2l-1.5-1.5-1.5 1.5V14H1c-0.55 0-1-0.45-1-1V1C0 0.45 0.45 0 1 0h10c0.55 0 1 0.45 1 1z m-1 10H1v2h2v-1h3v1h5V11z m0-10H2v9h9V1z"></path></svg>
  <span class="author" itemprop="author"><a href="/buckyroberts" class="url fn" rel="author">buckyroberts</a></span><!--
--><span class="path-divider">/</span><!--
--><strong itemprop="name"><a href="/buckyroberts/Source-Code-from-Tutorials" data-pjax="#js-repo-pjax-container">Source-Code-from-Tutorials</a></strong>

</h1>

  </div>
  <div class="container">
    
<nav class="reponav js-repo-nav js-sidenav-container-pjax"
     itemscope
     itemtype="http://schema.org/BreadcrumbList"
     role="navigation"
     data-pjax="#js-repo-pjax-container">

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/buckyroberts/Source-Code-from-Tutorials" aria-selected="true" class="js-selected-navigation-item selected reponav-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /buckyroberts/Source-Code-from-Tutorials" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-code" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M9.5 3l-1.5 1.5 3.5 3.5L8 11.5l1.5 1.5 4.5-5L9.5 3zM4.5 3L0 8l4.5 5 1.5-1.5L2.5 8l3.5-3.5L4.5 3z"></path></svg>
      <span itemprop="name">Code</span>
      <meta itemprop="position" content="1">
</a>  </span>

    <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
      <a href="/buckyroberts/Source-Code-from-Tutorials/issues" class="js-selected-navigation-item reponav-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /buckyroberts/Source-Code-from-Tutorials/issues" itemprop="url">
        <svg aria-hidden="true" class="octicon octicon-issue-opened" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M7 2.3c3.14 0 5.7 2.56 5.7 5.7S10.14 13.7 7 13.7 1.3 11.14 1.3 8s2.56-5.7 5.7-5.7m0-1.3C3.14 1 0 4.14 0 8s3.14 7 7 7 7-3.14 7-7S10.86 1 7 1z m1 3H6v5h2V4z m0 6H6v2h2V10z"></path></svg>
        <span itemprop="name">Issues</span>
        <span class="counter">7</span>
        <meta itemprop="position" content="2">
</a>    </span>

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/buckyroberts/Source-Code-from-Tutorials/pulls" class="js-selected-navigation-item reponav-item" data-hotkey="g p" data-selected-links="repo_pulls /buckyroberts/Source-Code-from-Tutorials/pulls" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-git-pull-request" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M11 11.28c0-1.73 0-6.28 0-6.28-0.03-0.78-0.34-1.47-0.94-2.06s-1.28-0.91-2.06-0.94c0 0-1.02 0-1 0V0L4 3l3 3V4h1c0.27 0.02 0.48 0.11 0.69 0.31s0.3 0.42 0.31 0.69v6.28c-0.59 0.34-1 0.98-1 1.72 0 1.11 0.89 2 2 2s2-0.89 2-2c0-0.73-0.41-1.38-1-1.72z m-1 2.92c-0.66 0-1.2-0.55-1.2-1.2s0.55-1.2 1.2-1.2 1.2 0.55 1.2 1.2-0.55 1.2-1.2 1.2zM4 3c0-1.11-0.89-2-2-2S0 1.89 0 3c0 0.73 0.41 1.38 1 1.72 0 1.55 0 5.56 0 6.56-0.59 0.34-1 0.98-1 1.72 0 1.11 0.89 2 2 2s2-0.89 2-2c0-0.73-0.41-1.38-1-1.72V4.72c0.59-0.34 1-0.98 1-1.72z m-0.8 10c0 0.66-0.55 1.2-1.2 1.2s-1.2-0.55-1.2-1.2 0.55-1.2 1.2-1.2 1.2 0.55 1.2 1.2z m-1.2-8.8c-0.66 0-1.2-0.55-1.2-1.2s0.55-1.2 1.2-1.2 1.2 0.55 1.2 1.2-0.55 1.2-1.2 1.2z"></path></svg>
      <span itemprop="name">Pull requests</span>
      <span class="counter">2</span>
      <meta itemprop="position" content="3">
</a>  </span>

    <a href="/buckyroberts/Source-Code-from-Tutorials/wiki" class="js-selected-navigation-item reponav-item" data-hotkey="g w" data-selected-links="repo_wiki /buckyroberts/Source-Code-from-Tutorials/wiki">
      <svg aria-hidden="true" class="octicon octicon-book" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M2 5h4v1H2v-1z m0 3h4v-1H2v1z m0 2h4v-1H2v1z m11-5H9v1h4v-1z m0 2H9v1h4v-1z m0 2H9v1h4v-1z m2-6v9c0 0.55-0.45 1-1 1H8.5l-1 1-1-1H1c-0.55 0-1-0.45-1-1V3c0-0.55 0.45-1 1-1h5.5l1 1 1-1h5.5c0.55 0 1 0.45 1 1z m-8 0.5l-0.5-0.5H1v9h6V3.5z m7-0.5H8.5l-0.5 0.5v8.5h6V3z"></path></svg>
      Wiki
</a>

  <a href="/buckyroberts/Source-Code-from-Tutorials/pulse" class="js-selected-navigation-item reponav-item" data-selected-links="pulse /buckyroberts/Source-Code-from-Tutorials/pulse">
    <svg aria-hidden="true" class="octicon octicon-pulse" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M11.5 8L8.8 5.4 6.6 8.5 5.5 1.6 2.38 8H0V10h3.6L4.5 8.2l0.9 5.4L9 8.5l1.6 1.5H14V8H11.5z"></path></svg>
    Pulse
</a>
  <a href="/buckyroberts/Source-Code-from-Tutorials/graphs" class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors /buckyroberts/Source-Code-from-Tutorials/graphs">
    <svg aria-hidden="true" class="octicon octicon-graph" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M16 14v1H0V0h1v14h15z m-11-1H3V8h2v5z m4 0H7V3h2v10z m4 0H11V6h2v7z"></path></svg>
    Graphs
</a>

</nav>

  </div>
</div>

<div class="container new-discussion-timeline experiment-repo-nav">
  <div class="repository-content">

    

<a href="/buckyroberts/Source-Code-from-Tutorials/blob/18e10daa75b3b0a559c94a87ad3cf2c99f44b432/Other/SampleMySQLData/store.sql" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:c156bb0833a16e94cb1d460a85d63bf3 -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu branch-select-menu js-menu-container js-select-menu left">
  <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    title="master"
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <i>Branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48-3.75-3.75-3.75 3.75-1.48-1.48 3.75-3.75L0.77 4.25l1.48-1.48 3.75 3.75 3.75-3.75 1.48 1.48-3.75 3.75z"></path></svg>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="form-control js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/buckyroberts/Source-Code-from-Tutorials/blob/master/Other/SampleMySQLData/store.sql"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5L4 13 0 9l1.5-1.5 2.5 2.5 6.5-6.5 1.5 1.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="master">
                master
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/buckyroberts/Source-Code-from-Tutorials/blob/revert-26-master/Other/SampleMySQLData/store.sql"
               data-name="revert-26-master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5L4 13 0 9l1.5-1.5 2.5 2.5 6.5-6.5 1.5 1.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="revert-26-master">
                revert-26-master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="btn-group right">
    <a href="/buckyroberts/Source-Code-from-Tutorials/find/master"
          class="js-pjax-capture-input btn btn-sm"
          data-pjax
          data-hotkey="t">
      Find file
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button">Copy path</button>
  </div>
  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span class="js-path-segment"><a href="/buckyroberts/Source-Code-from-Tutorials"><span>Source-Code-from-Tutorials</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a href="/buckyroberts/Source-Code-from-Tutorials/tree/master/Other"><span>Other</span></a></span><span class="separator">/</span><span class="js-path-segment"><a href="/buckyroberts/Source-Code-from-Tutorials/tree/master/Other/SampleMySQLData"><span>SampleMySQLData</span></a></span><span class="separator">/</span><strong class="final-path">store.sql</strong>
  </div>
</div>


  <div class="commit-tease">
      <span class="right">
        <a class="commit-tease-sha" href="/buckyroberts/Source-Code-from-Tutorials/commit/12b9399df016ba36ee666643f5219178e682c4d4" data-pjax>
          12b9399
        </a>
        <relative-time datetime="2015-12-21T10:39:07Z">Dec 21, 2015</relative-time>
      </span>
      <div>
        <img alt="@buckyroberts" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/8547538?v=3&amp;s=40" width="20" />
        <a href="/buckyroberts" class="user-mention" rel="author">buckyroberts</a>
          <a href="/buckyroberts/Source-Code-from-Tutorials/commit/12b9399df016ba36ee666643f5219178e682c4d4" class="message" data-pjax="true" title="Added source code.">Added source code.</a>
      </div>

    <div class="commit-tease-contributors">
      <button type="button" class="btn-link muted-link contributors-toggle" data-facebox="#blob_contributors_box">
        <strong>1</strong>
         contributor
      </button>
      
    </div>

    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header" data-facebox-id="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list" data-facebox-id="facebox-description">
          <li class="facebox-user-list-item">
            <img alt="@buckyroberts" height="24" src="https://avatars3.githubusercontent.com/u/8547538?v=3&amp;s=48" width="24" />
            <a href="/buckyroberts">buckyroberts</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="btn-group">
      <a href="/buckyroberts/Source-Code-from-Tutorials/raw/master/Other/SampleMySQLData/store.sql" class="btn btn-sm " id="raw-url">Raw</a>
        <a href="/buckyroberts/Source-Code-from-Tutorials/blame/master/Other/SampleMySQLData/store.sql" class="btn btn-sm js-update-url-with-hash">Blame</a>
      <a href="/buckyroberts/Source-Code-from-Tutorials/commits/master/Other/SampleMySQLData/store.sql" class="btn btn-sm " rel="nofollow">History</a>
    </div>

        <a class="btn-octicon tooltipped tooltipped-nw"
           href="github-windows://openRepo/https://github.com/buckyroberts/Source-Code-from-Tutorials?branch=master&amp;filepath=Other%2FSampleMySQLData%2Fstore.sql"
           aria-label="Open this file in GitHub Desktop"
           data-ga-click="Repository, open with desktop, type:windows">
            <svg aria-hidden="true" class="octicon octicon-device-desktop" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M15 2H1c-0.55 0-1 0.45-1 1v9c0 0.55 0.45 1 1 1h5.34c-0.25 0.61-0.86 1.39-2.34 2h8c-1.48-0.61-2.09-1.39-2.34-2h5.34c0.55 0 1-0.45 1-1V3c0-0.55-0.45-1-1-1z m0 9H1V3h14v8z"></path></svg>
        </a>

        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/buckyroberts/Source-Code-from-Tutorials/edit/master/Other/SampleMySQLData/store.sql" class="inline-form js-update-url-with-hash" data-form-nonce="f9e544e0c28fb96a5193ba0e590f56c48fe429c5" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="s7tbrmhvlYJFboWPIp7HbjIuvcvUDuY2Tbg6HqR3NhhkAz88rbpUhoWXKrm4cvdjWx91pxz04jiqxUeHMV9f6w==" /></div>
          <button class="btn-octicon tooltipped tooltipped-nw" type="submit"
            aria-label="Fork this project and edit the file" data-hotkey="e" data-disable-with>
            <svg aria-hidden="true" class="octicon octicon-pencil" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M0 12v3h3l8-8-3-3L0 12z m3 2H1V12h1v1h1v1z m10.3-9.3l-1.3 1.3-3-3 1.3-1.3c0.39-0.39 1.02-0.39 1.41 0l1.59 1.59c0.39 0.39 0.39 1.02 0 1.41z"></path></svg>
          </button>
</form>        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/buckyroberts/Source-Code-from-Tutorials/delete/master/Other/SampleMySQLData/store.sql" class="inline-form" data-form-nonce="f9e544e0c28fb96a5193ba0e590f56c48fe429c5" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="xEnG88Xk0P8AW5mh8Tr++IGJIRKYg3ksWvwmdr5HjWISIahUF1ao8SRQPzOHbqoRT2wZ8KwYHAbxzZm821gkSQ==" /></div>
          <button class="btn-octicon btn-octicon-danger tooltipped tooltipped-nw" type="submit"
            aria-label="Fork this project and delete the file" data-disable-with>
            <svg aria-hidden="true" class="octicon octicon-trashcan" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M10 2H8c0-0.55-0.45-1-1-1H4c-0.55 0-1 0.45-1 1H1c-0.55 0-1 0.45-1 1v1c0 0.55 0.45 1 1 1v9c0 0.55 0.45 1 1 1h7c0.55 0 1-0.45 1-1V5c0.55 0 1-0.45 1-1v-1c0-0.55-0.45-1-1-1z m-1 12H2V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9z m1-10H1v-1h9v1z"></path></svg>
          </button>
</form>  </div>

  <div class="file-info">
      239 lines (228 sloc)
      <span class="file-info-divider"></span>
    11.2 KB
  </div>
</div>

  

  <div itemprop="text" class="blob-wrapper data type-sql">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-k">SET</span> SQL_MODE <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>NO_AUTO_VALUE_ON_ZERO<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-k">SET</span> time_zone <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>+00:00<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */</span>;</td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */</span>;</td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */</span>;</td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET NAMES utf8 */</span>;</td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">DATABASE</span> <span class="pl-en">IF</span> NOT EXISTS <span class="pl-s"><span class="pl-pds">`</span>store<span class="pl-pds">`</span></span> DEFAULT CHARACTER <span class="pl-k">SET</span> latin1 COLLATE latin1_swedish_ci;</td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line">USE <span class="pl-s"><span class="pl-pds">`</span>store<span class="pl-pds">`</span></span>;</td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">IF</span> NOT EXISTS <span class="pl-s"><span class="pl-pds">`</span>customers<span class="pl-pds">`</span></span> (</td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>id<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>name<span class="pl-pds">`</span></span> <span class="pl-k">varchar</span>(<span class="pl-c1">60</span>) COLLATE utf8_unicode_ci <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>address<span class="pl-pds">`</span></span> <span class="pl-k">varchar</span>(<span class="pl-c1">60</span>) COLLATE utf8_unicode_ci <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>city<span class="pl-pds">`</span></span> <span class="pl-k">varchar</span>(<span class="pl-c1">30</span>) COLLATE utf8_unicode_ci <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>state<span class="pl-pds">`</span></span> <span class="pl-k">varchar</span>(<span class="pl-c1">10</span>) COLLATE utf8_unicode_ci <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>zip<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span></td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line">) ENGINE<span class="pl-k">=</span>MyISAM DEFAULT CHARSET<span class="pl-k">=</span>utf8 COLLATE<span class="pl-k">=</span>utf8_unicode_ci;</td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line"><span class="pl-k">INSERT INTO</span> <span class="pl-s"><span class="pl-pds">`</span>customers<span class="pl-pds">`</span></span> (<span class="pl-s"><span class="pl-pds">`</span>id<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>name<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>address<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>city<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>state<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>zip<span class="pl-pds">`</span></span>) <span class="pl-k">VALUES</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">1</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Bucky Roberts<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>32 Hungerford Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Adams<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NY<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">13605</span>),</td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">2</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Noah Parker<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>342 Tunafish Lane<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Raleigh<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NC<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">27606</span>),</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">3</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Kelsey Burger<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>43 Crab Orchard Dr<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Oakland<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>CA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">90210</span>),</td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">4</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Corey Smith<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>423 Wisteria Lane<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Simmersville<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>AK<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">54112</span>),</td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">5</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Harry Potter<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>673 Greenwich Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Newark<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NJ<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">80432</span>),</td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">6</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Henry Jackson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>2134 Grant St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Gary<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>IN<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">47404</span>),</td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">7</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Cynthia Alvarez<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>1568 Greenfield Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Augusta<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>GA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">30568</span>),</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">8</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Teresa Smith<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>8725 Black St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Philadelphia<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>PA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">19603</span>),</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">9</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Gary Foster<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3752 Wittfield Blvd<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Indianapolis<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>IN<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">46219</span>),</td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">10</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Sherry Gibbons<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>5517 Oak St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Phoenix<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>AZ<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">85072</span>),</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">11</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Jack Nicholson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>1234 Star Lane<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Hollywood<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>CA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">90210</span>),</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">12</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Penny Green<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>4972 Massachusetts Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Orlando<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>FL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">33718</span>),</td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">13</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Alexander Evans<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>6310 E 21st Rd<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Las Vegas<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NV<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">83594</span>),</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">14</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Jeremy White<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3954 Brentwood Dr<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Seattle<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>WA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">99037</span>),</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">15</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Omar Badshah<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>6801 Regina Cir<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Madison<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>WI<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">53209</span>),</td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">16</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Preston Harrison<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>104 Main St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Denver<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>CO<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">81712</span>),</td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">17</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Manuel Rodriguez<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>99543 Westin Blvd<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Provo<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>UT<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">85478</span>),</td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">18</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>David Jones<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>5488 W 34th St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Boston<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>MA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">2104</span>),</td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">19</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Nick Flanders<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3486 Happy Trails Dr<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Springfield<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>OH<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">45872</span>),</td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">20</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Paul Brown<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3290 Pennsylvania Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Chicago<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>IL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">61208</span>),</td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">21</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Sara Rehm<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>7746 Wysong Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Detroit<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>MI<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">48913</span>),</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">22</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Haley Carter<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>2957 Princess Way<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Portland<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>OR<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">97532</span>),</td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">23</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Julian Thomas<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>5564 Dandy Trail<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Santa Fe<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NM<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">81543</span>),</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">24</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>George Lucas<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>8224 Star Wars Ln<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Galaxy<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>TN<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">37512</span>),</td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">25</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Perry Jordan<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>4321 Victory Rd<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Montgomery<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>AL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">33219</span>),</td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">26</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Christopher Layton<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>871 Georgia Pl<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Houston<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>TX<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">78704</span>),</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">27</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Devon Myers<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>9932 Carmel Dr<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>New York<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NY<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">11920</span>),</td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">28</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Debra Talkington<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>8421 Smithfield Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Mesa<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>AZ<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">82573</span>),</td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">29</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Peter Johnson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>4213 Jones Pkwy<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Missoula<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>MS<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">37228</span>),</td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">30</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Harry Brown<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>125 Cinnamon Way<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Raleigh<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NC<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">27418</span>),</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">31</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Kay Billings<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>4592 Jessica Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Cincinnati<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>OH<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">43118</span>),</td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">32</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Desmond Rafferty<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>6329 Jordan St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>San Diego<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>CA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">93980</span>),</td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">33</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Lisa Washington<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3490 Dearborn Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Boise<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>ID<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">84930</span>),</td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">34</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Jackson Taylor<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>7733 Miami Way<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Atlanta<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>GA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">37544</span>),</td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">35</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Michael Davis<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>9245 Olney Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Eau Claire<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>WI<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">54732</span>),</td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">36</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Candice Thompson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3122 Ebony Blvd<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Memphis<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>TN<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">33152</span>),</td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">37</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Terry Mitchell<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>7438 Tacoma St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Spokane<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>WA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">99753</span>),</td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">38</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Ruth Bolen<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>5584 Frigid Ln<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Anchorage<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>AK<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">99831</span>),</td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">39</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>James Hamilton<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>449 Routiers Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Ft Lauderdale<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>FL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">33912</span>),</td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">40</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Harvey Akins<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>7950 Ridge Rd<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Newark<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NJ<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">2753</span>),</td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">41</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Timothy Smothers<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>5892 Maple Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Washington<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>DC<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">213</span>),</td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">42</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Stephanie Nichols<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>2275 Apple St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Highland<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>MI<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">49003</span>),</td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">43</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Ken Davidson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>1583 N 27th Rd<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Dallas<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>TX<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">78432</span>),</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">44</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Angel Martin<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3195 Mapleton Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Providence<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>RI<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">8132</span>),</td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">45</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Cathy Douglas<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>8934 Glory St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Boulder<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>CO<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">89578</span>),</td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">46</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Kendall Norton<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>8733 Jordan Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Kansas City<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>KS<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">66555</span>),</td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">47</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Desire Morton<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>2138 Peaches Way<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Ellettsville<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>IL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">67330</span>),</td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">48</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Patty Zrock<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>7397 Happy St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Brooklyn<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NY<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">13420</span>),</td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">49</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Evan Bayh<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>6613 North St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Miami<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>FL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">33990</span>),</td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">50</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Kevin Masters<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>91350 Carmel Dr<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Brisket<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>WY<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">80154</span>),</td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">51</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Paula Barker<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>6528 Prozac Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>San Francisco<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>CA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">92953</span>),</td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">52</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>John Jacobs<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>2957 Ashway Ct<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Pittsburgh<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>PA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">18320</span>),</td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">53</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Dana Brunswick<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>4825 Polly Ln<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Las Vegas<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NV<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">89223</span>),</td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">54</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>David Turner<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>743 Main St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Knoxville<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>TN<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">37710</span>),</td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">55</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Michael Orlando<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>1355 Joseph Way<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Pensacola<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>FL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">31552</span>),</td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">56</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Terry Green<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>6320 LaSalle St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Yazoo<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>MS<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">30428</span>),</td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">57</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Greg Evans<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>2294 South St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Indianapolis<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>IN<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">46203</span>),</td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">58</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Sandy Johnson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>5319 Brentwood Dr<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Louisville<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>KY<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">41350</span>),</td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">59</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Charlie Jones<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>5382 Miracle Ln<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>New Orleans<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>LA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">73210</span>),</td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">60</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Kevin Grier<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>855 Henry St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Provo<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>UT<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">83111</span>),</td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">61</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Lani Kulana<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3352 Hibiscus Ln<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Honolulu<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>HI<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">93525</span>),</td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">62</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Mary Worley<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>4291 Cherry St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Oaktown<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NH<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">5308</span>),</td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">63</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Tanya Gleason<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>7315 Franklin Rd<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Peoria<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>IL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">66514</span>),</td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">64</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Donna Bradley<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>2753 Florida Way<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>San Jose<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>CA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">91342</span>),</td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">65</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Jimmy Lawson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>9 Corporate Dr<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Excelsior<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>GA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">37833</span>),</td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">66</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Brenda Fowler<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>8447 Jackson Pl<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>St Louis<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>MO<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">63153</span>),</td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">67</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Karen Mills<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>9077 Cumberland Way<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Tulsa<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>OK<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">74319</span>),</td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">68</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Aretha Gordon<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>1489 Pumpkin Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Appleton<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>WI<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">54310</span>),</td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">69</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Carol Brown<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>6225 Tamiami Trl<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Ft Myers<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>FL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">33914</span>),</td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">70</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Jerry Freeman<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>7840 Princess Dr<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Topeka<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>KS<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">63330</span>),</td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">71</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>LuAnn Dennis<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>5602 Norman St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Philadelphia<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>PA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">17569</span>),</td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">72</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Thomas Jackson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3958 Breen Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Mobile<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>AL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">34558</span>),</td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">73</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Marilyn Pritchett<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>1468 Duncan St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Trenton<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NJ<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">7104</span>),</td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">74</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Katherine Cain<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>4388 Drysdale Ln<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Texarkana<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>AR<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">77315</span>),</td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">75</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Patsy Cline<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>9926 Hemingway Blvd<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Tuscaloosa<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>CA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">97221</span>),</td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">76</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Kerry Jackson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>5533 Penelope St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Beaverton<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>OR<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">91353</span>),</td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">77</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Princess Wilson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3127 Spencer Dr<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Norton<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>sC<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">27384</span>),</td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">78</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Henry Fisk<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>6341 Wilmington Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Lincoln<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NE<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">70011</span>),</td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">79</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Jessica Grant<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>2203 Pansy Ln<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Butte<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>MT<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">54438</span>),</td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">80</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Joe Franklin<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>1078 Dusky Dr<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Independence<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>IN<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">46935</span>),</td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">81</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Larry Hood<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3522 Potter St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Marietta<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>GA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">37023</span>),</td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">82</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Jim OBrien<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>6084 Maple St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Boston<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>MA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">1358</span>),</td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">83</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Tanya Hicks<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>1487 Potter St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Orlando<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>FL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">34258</span>),</td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">84</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Dean Williams<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>2279 Gray St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Roanoke<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>VA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">27384</span>),</td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">85</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Jason Freeman<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>4301 Perry Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Lincoln<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NE<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">67301</span>),</td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">86</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Katy Smith<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>8733 Johnson Way<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Santa Fe<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NM<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">80227</span>),</td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">87</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Andy Jones<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>5177 US 42 S<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Paragon<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>MI<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">48203</span>),</td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">88</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Crystal Jarvis<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>9028 Indiana Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Tuscaloosa<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>AL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">32784</span>),</td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">89</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Elizabeth McMurray<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>730 Walnut St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Mooresville<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>WI<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">53802</span>),</td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">90</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Cassandra Tansy<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>1209 Broadway St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Bloomington<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>IN<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">46801</span>),</td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">91</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Dick Moore<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3209 Simpson Rd<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>New York<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>NY<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">10220</span>),</td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">92</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Marisa Rodriguez<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>873 Olney Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Muncie<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>VA<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">20384</span>),</td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">93</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Tyrone Jackson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>7725 Georgia St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Salt Lake City<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>UT<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">82004</span>),</td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">94</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Donald Gray<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>8339 Olivia St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Champaign<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>IL<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">60337</span>),</td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">95</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Victoria Jameson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>2804 Oak Tree St<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Salina<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>KS<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">67905</span>),</td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">96</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Lucy Bronson<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>5336 Michigan Ave<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Wilmington<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>DE<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">1903</span>);</td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">IF</span> NOT EXISTS <span class="pl-s"><span class="pl-pds">`</span>items<span class="pl-pds">`</span></span> (</td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>id<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>name<span class="pl-pds">`</span></span> <span class="pl-k">varchar</span>(<span class="pl-c1">65</span>) COLLATE utf8_unicode_ci <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>cost<span class="pl-pds">`</span></span> float <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>seller_id<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>bids<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span></td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code blob-code-inner js-file-line">) ENGINE<span class="pl-k">=</span>MyISAM DEFAULT CHARSET<span class="pl-k">=</span>utf8 COLLATE<span class="pl-k">=</span>utf8_unicode_ci;</td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code blob-code-inner js-file-line"><span class="pl-k">INSERT INTO</span> <span class="pl-s"><span class="pl-pds">`</span>items<span class="pl-pds">`</span></span> (<span class="pl-s"><span class="pl-pds">`</span>id<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>name<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>cost<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>seller_id<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>bids<span class="pl-pds">`</span></span>) <span class="pl-k">VALUES</span></td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">1</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Brand New iMac Computer<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">149</span>.<span class="pl-c1">99</span>, <span class="pl-c1">32</span>, <span class="pl-c1">3</span>),</td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">2</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>used diaper from my sister<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">2</span>.<span class="pl-c1">04</span>, <span class="pl-c1">1</span>, <span class="pl-c1">0</span>),</td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">3</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Fresh apple pie<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">14</span>.<span class="pl-c1">99</span>, <span class="pl-c1">54</span>, <span class="pl-c1">32</span>),</td>
      </tr>
      <tr>
        <td id="L131" class="blob-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">4</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>New gym socks<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">2</span>.<span class="pl-c1">34</span>, <span class="pl-c1">90</span>, <span class="pl-c1">566</span>),</td>
      </tr>
      <tr>
        <td id="L132" class="blob-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">5</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Weedwacker only slightly used<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">4</span>.<span class="pl-c1">56</span>, <span class="pl-c1">84</span>, <span class="pl-c1">2</span>),</td>
      </tr>
      <tr>
        <td id="L133" class="blob-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">6</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>New ipad stolen from best buy<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">399</span>, <span class="pl-c1">32</span>, <span class="pl-c1">23</span>),</td>
      </tr>
      <tr>
        <td id="L134" class="blob-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">7</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Book about having babies<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">21</span>.<span class="pl-c1">34</span>, <span class="pl-c1">44</span>, <span class="pl-c1">21</span>),</td>
      </tr>
      <tr>
        <td id="L135" class="blob-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">8</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Woman Jeans<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">49</span>.<span class="pl-c1">5</span>, <span class="pl-c1">56</span>, <span class="pl-c1">123</span>),</td>
      </tr>
      <tr>
        <td id="L136" class="blob-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">9</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>traditional carpet<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">25</span>.<span class="pl-c1">45</span>, <span class="pl-c1">14</span>, <span class="pl-c1">75</span>),</td>
      </tr>
      <tr>
        <td id="L137" class="blob-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">10</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>3 boxes of frogs<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">30</span>.<span class="pl-c1">49</span>, <span class="pl-c1">68</span>, <span class="pl-c1">145</span>),</td>
      </tr>
      <tr>
        <td id="L138" class="blob-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">11</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>48 boxes of frogs<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">74</span>.<span class="pl-c1">29</span>, <span class="pl-c1">6</span>, <span class="pl-c1">99</span>),</td>
      </tr>
      <tr>
        <td id="L139" class="blob-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">12</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>7 boxes of frogs<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">857</span>.<span class="pl-c1">75</span>, <span class="pl-c1">18</span>, <span class="pl-c1">88</span>),</td>
      </tr>
      <tr>
        <td id="L140" class="blob-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">13</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>laptop<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">743</span>.<span class="pl-c1">3</span>, <span class="pl-c1">89</span>, <span class="pl-c1">158</span>),</td>
      </tr>
      <tr>
        <td id="L141" class="blob-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">14</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>thumbelina<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">228</span>.<span class="pl-c1">05</span>, <span class="pl-c1">15</span>, <span class="pl-c1">49</span>),</td>
      </tr>
      <tr>
        <td id="L142" class="blob-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">15</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>bed<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">127</span>.<span class="pl-c1">15</span>, <span class="pl-c1">65</span>, <span class="pl-c1">189</span>),</td>
      </tr>
      <tr>
        <td id="L143" class="blob-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">16</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>shampoing<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">12</span>.<span class="pl-c1">8</span>, <span class="pl-c1">6</span>, <span class="pl-c1">105</span>),</td>
      </tr>
      <tr>
        <td id="L144" class="blob-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">17</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>stove<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">37</span>.<span class="pl-c1">66</span>, <span class="pl-c1">68</span>, <span class="pl-c1">111</span>),</td>
      </tr>
      <tr>
        <td id="L145" class="blob-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">18</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>cushion<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">7</span>.<span class="pl-c1">15</span>, <span class="pl-c1">97</span>, <span class="pl-c1">157</span>),</td>
      </tr>
      <tr>
        <td id="L146" class="blob-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">19</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>refrigerator<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">657</span>.<span class="pl-c1">49</span>, <span class="pl-c1">61</span>, <span class="pl-c1">129</span>),</td>
      </tr>
      <tr>
        <td id="L147" class="blob-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">20</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>gold necklace<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">853</span>.<span class="pl-c1">07</span>, <span class="pl-c1">10</span>, <span class="pl-c1">101</span>),</td>
      </tr>
      <tr>
        <td id="L148" class="blob-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">21</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>pan<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">33</span>.<span class="pl-c1">7</span>, <span class="pl-c1">7</span>, <span class="pl-c1">184</span>),</td>
      </tr>
      <tr>
        <td id="L149" class="blob-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">22</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>awesome alien computer game<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">10</span>.<span class="pl-c1">75</span>, <span class="pl-c1">18</span>, <span class="pl-c1">29</span>),</td>
      </tr>
      <tr>
        <td id="L150" class="blob-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">23</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>baby coat<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">89</span>.<span class="pl-c1">99</span>, <span class="pl-c1">14</span>, <span class="pl-c1">47</span>),</td>
      </tr>
      <tr>
        <td id="L151" class="blob-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">24</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>baby seat<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">145</span>.<span class="pl-c1">78</span>, <span class="pl-c1">2</span>, <span class="pl-c1">199</span>),</td>
      </tr>
      <tr>
        <td id="L152" class="blob-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">25</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>satchel<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">44</span>.<span class="pl-c1">71</span>, <span class="pl-c1">15</span>, <span class="pl-c1">66</span>),</td>
      </tr>
      <tr>
        <td id="L153" class="blob-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">26</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>women perfum<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">110</span>.<span class="pl-c1">9</span>, <span class="pl-c1">48</span>, <span class="pl-c1">84</span>),</td>
      </tr>
      <tr>
        <td id="L154" class="blob-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">27</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>conveyor belt<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">1120</span>.<span class="pl-c1">75</span>, <span class="pl-c1">11</span>, <span class="pl-c1">4</span>),</td>
      </tr>
      <tr>
        <td id="L155" class="blob-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">28</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>used car<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">5700</span>.<span class="pl-c1">5</span>, <span class="pl-c1">12</span>, <span class="pl-c1">135</span>),</td>
      </tr>
      <tr>
        <td id="L156" class="blob-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">29</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>supercomputer<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">49</span>.<span class="pl-c1">75</span>, <span class="pl-c1">50</span>, <span class="pl-c1">176</span>),</td>
      </tr>
      <tr>
        <td id="L157" class="blob-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">30</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>mirror<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">26</span>.<span class="pl-c1">8</span>, <span class="pl-c1">19</span>, <span class="pl-c1">56</span>),</td>
      </tr>
      <tr>
        <td id="L158" class="blob-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">31</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>piano<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">1800</span>.<span class="pl-c1">4</span>, <span class="pl-c1">13</span>, <span class="pl-c1">147</span>),</td>
      </tr>
      <tr>
        <td id="L159" class="blob-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">32</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>quitar<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">88</span>.<span class="pl-c1">4</span>, <span class="pl-c1">25</span>, <span class="pl-c1">164</span>),</td>
      </tr>
      <tr>
        <td id="L160" class="blob-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">33</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>trumpet<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">255</span>.<span class="pl-c1">15</span>, <span class="pl-c1">36</span>, <span class="pl-c1">23</span>),</td>
      </tr>
      <tr>
        <td id="L161" class="blob-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">34</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>machintosh<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">3845</span>, <span class="pl-c1">20</span>, <span class="pl-c1">107</span>),</td>
      </tr>
      <tr>
        <td id="L162" class="blob-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">35</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>earphone<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">10</span>.<span class="pl-c1">5</span>, <span class="pl-c1">17</span>, <span class="pl-c1">110</span>),</td>
      </tr>
      <tr>
        <td id="L163" class="blob-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">36</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>computer<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">418</span>, <span class="pl-c1">11</span>, <span class="pl-c1">152</span>),</td>
      </tr>
      <tr>
        <td id="L164" class="blob-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">37</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>night light<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">13</span>.<span class="pl-c1">87</span>, <span class="pl-c1">97</span>, <span class="pl-c1">198</span>),</td>
      </tr>
      <tr>
        <td id="L165" class="blob-num js-line-number" data-line-number="165"></td>
        <td id="LC165" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">38</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>pc bag<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">50</span>.<span class="pl-c1">99</span>, <span class="pl-c1">48</span>, <span class="pl-c1">65</span>),</td>
      </tr>
      <tr>
        <td id="L166" class="blob-num js-line-number" data-line-number="166"></td>
        <td id="LC166" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">39</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>babyfoot<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">376</span>.<span class="pl-c1">7</span>, <span class="pl-c1">2</span>, <span class="pl-c1">121</span>),</td>
      </tr>
      <tr>
        <td id="L167" class="blob-num js-line-number" data-line-number="167"></td>
        <td id="LC167" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">40</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>hairdryer<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">88</span>.<span class="pl-c1">9</span>, <span class="pl-c1">12</span>, <span class="pl-c1">177</span>),</td>
      </tr>
      <tr>
        <td id="L168" class="blob-num js-line-number" data-line-number="168"></td>
        <td id="LC168" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">41</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>babyliss<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">130</span>.<span class="pl-c1">75</span>, <span class="pl-c1">68</span>, <span class="pl-c1">79</span>),</td>
      </tr>
      <tr>
        <td id="L169" class="blob-num js-line-number" data-line-number="169"></td>
        <td id="LC169" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">42</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>door<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">150</span>.<span class="pl-c1">5</span>, <span class="pl-c1">98</span>, <span class="pl-c1">13</span>),</td>
      </tr>
      <tr>
        <td id="L170" class="blob-num js-line-number" data-line-number="170"></td>
        <td id="LC170" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">43</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>baby soap<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">12</span>.<span class="pl-c1">7</span>, <span class="pl-c1">4</span>, <span class="pl-c1">198</span>),</td>
      </tr>
      <tr>
        <td id="L171" class="blob-num js-line-number" data-line-number="171"></td>
        <td id="LC171" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">44</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>used phone<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">43</span>.<span class="pl-c1">75</span>, <span class="pl-c1">9</span>, <span class="pl-c1">69</span>),</td>
      </tr>
      <tr>
        <td id="L172" class="blob-num js-line-number" data-line-number="172"></td>
        <td id="LC172" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">45</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>bath<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">757</span>.<span class="pl-c1">15</span>, <span class="pl-c1">96</span>, <span class="pl-c1">55</span>),</td>
      </tr>
      <tr>
        <td id="L173" class="blob-num js-line-number" data-line-number="173"></td>
        <td id="LC173" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">46</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>flower<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">10</span>.<span class="pl-c1">75</span>, <span class="pl-c1">16</span>, <span class="pl-c1">89</span>),</td>
      </tr>
      <tr>
        <td id="L174" class="blob-num js-line-number" data-line-number="174"></td>
        <td id="LC174" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">47</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>battery charger<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">48</span>.<span class="pl-c1">75</span>, <span class="pl-c1">25</span>, <span class="pl-c1">87</span>),</td>
      </tr>
      <tr>
        <td id="L175" class="blob-num js-line-number" data-line-number="175"></td>
        <td id="LC175" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">48</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>air conditioner<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">975</span>, <span class="pl-c1">12</span>, <span class="pl-c1">151</span>),</td>
      </tr>
      <tr>
        <td id="L176" class="blob-num js-line-number" data-line-number="176"></td>
        <td id="LC176" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">49</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>casserole<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">115</span>.<span class="pl-c1">75</span>, <span class="pl-c1">46</span>, <span class="pl-c1">35</span>),</td>
      </tr>
      <tr>
        <td id="L177" class="blob-num js-line-number" data-line-number="177"></td>
        <td id="LC177" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">50</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>used toilet<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">180</span>.<span class="pl-c1">7</span>, <span class="pl-c1">64</span>, <span class="pl-c1">11</span>),</td>
      </tr>
      <tr>
        <td id="L178" class="blob-num js-line-number" data-line-number="178"></td>
        <td id="LC178" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">51</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>teashirt<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">14</span>.<span class="pl-c1">98</span>, <span class="pl-c1">65</span>, <span class="pl-c1">114</span>),</td>
      </tr>
      <tr>
        <td id="L179" class="blob-num js-line-number" data-line-number="179"></td>
        <td id="LC179" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">52</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>moto<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">920</span>, <span class="pl-c1">22</span>, <span class="pl-c1">174</span>),</td>
      </tr>
      <tr>
        <td id="L180" class="blob-num js-line-number" data-line-number="180"></td>
        <td id="LC180" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">53</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>saxophone<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">220</span>.<span class="pl-c1">9</span>, <span class="pl-c1">60</span>, <span class="pl-c1">140</span>),</td>
      </tr>
      <tr>
        <td id="L181" class="blob-num js-line-number" data-line-number="181"></td>
        <td id="LC181" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">54</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>bicycle<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">180</span>.<span class="pl-c1">55</span>, <span class="pl-c1">97</span>, <span class="pl-c1">35</span>),</td>
      </tr>
      <tr>
        <td id="L182" class="blob-num js-line-number" data-line-number="182"></td>
        <td id="LC182" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">55</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>man perfum<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">95</span>, <span class="pl-c1">75</span>, <span class="pl-c1">199</span>),</td>
      </tr>
      <tr>
        <td id="L183" class="blob-num js-line-number" data-line-number="183"></td>
        <td id="LC183" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">56</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>table<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">157</span>.<span class="pl-c1">25</span>, <span class="pl-c1">91</span>, <span class="pl-c1">48</span>),</td>
      </tr>
      <tr>
        <td id="L184" class="blob-num js-line-number" data-line-number="184"></td>
        <td id="LC184" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">57</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>boat<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">4890</span>.<span class="pl-c1">5</span>, <span class="pl-c1">17</span>, <span class="pl-c1">177</span>),</td>
      </tr>
      <tr>
        <td id="L185" class="blob-num js-line-number" data-line-number="185"></td>
        <td id="LC185" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">58</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>iphone<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">547</span>, <span class="pl-c1">8</span>, <span class="pl-c1">28</span>),</td>
      </tr>
      <tr>
        <td id="L186" class="blob-num js-line-number" data-line-number="186"></td>
        <td id="LC186" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">59</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>body milk<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">50</span>.<span class="pl-c1">5</span>, <span class="pl-c1">16</span>, <span class="pl-c1">90</span>),</td>
      </tr>
      <tr>
        <td id="L187" class="blob-num js-line-number" data-line-number="187"></td>
        <td id="LC187" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">60</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>new curtain for bedroom<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">278</span>.<span class="pl-c1">4</span>, <span class="pl-c1">92</span>, <span class="pl-c1">11</span>),</td>
      </tr>
      <tr>
        <td id="L188" class="blob-num js-line-number" data-line-number="188"></td>
        <td id="LC188" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">61</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>diamond ring<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">1900</span>, <span class="pl-c1">15</span>, <span class="pl-c1">45</span>),</td>
      </tr>
      <tr>
        <td id="L189" class="blob-num js-line-number" data-line-number="189"></td>
        <td id="LC189" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">62</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>swept<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">4</span>.<span class="pl-c1">5</span>, <span class="pl-c1">9</span>, <span class="pl-c1">99</span>),</td>
      </tr>
      <tr>
        <td id="L190" class="blob-num js-line-number" data-line-number="190"></td>
        <td id="LC190" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">63</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>women hat<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">17</span>.<span class="pl-c1">55</span>, <span class="pl-c1">39</span>, <span class="pl-c1">60</span>),</td>
      </tr>
      <tr>
        <td id="L191" class="blob-num js-line-number" data-line-number="191"></td>
        <td id="LC191" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">64</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>washing machine<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">680</span>.<span class="pl-c1">9</span>, <span class="pl-c1">42</span>, <span class="pl-c1">125</span>),</td>
      </tr>
      <tr>
        <td id="L192" class="blob-num js-line-number" data-line-number="192"></td>
        <td id="LC192" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">65</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>baby bottle<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">27</span>.<span class="pl-c1">98</span>, <span class="pl-c1">91</span>, <span class="pl-c1">117</span>),</td>
      </tr>
      <tr>
        <td id="L193" class="blob-num js-line-number" data-line-number="193"></td>
        <td id="LC193" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">66</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>women sun glasses<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">66</span>.<span class="pl-c1">7</span>, <span class="pl-c1">18</span>, <span class="pl-c1">174</span>),</td>
      </tr>
      <tr>
        <td id="L194" class="blob-num js-line-number" data-line-number="194"></td>
        <td id="LC194" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">67</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>person weighs<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">65</span>.<span class="pl-c1">25</span>, <span class="pl-c1">10</span>, <span class="pl-c1">100</span>),</td>
      </tr>
      <tr>
        <td id="L195" class="blob-num js-line-number" data-line-number="195"></td>
        <td id="LC195" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">68</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>photo frame<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">18</span>, <span class="pl-c1">85</span>, <span class="pl-c1">170</span>),</td>
      </tr>
      <tr>
        <td id="L196" class="blob-num js-line-number" data-line-number="196"></td>
        <td id="LC196" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">69</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>key board<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">16</span>.<span class="pl-c1">7</span>, <span class="pl-c1">90</span>, <span class="pl-c1">101</span>),</td>
      </tr>
      <tr>
        <td id="L197" class="blob-num js-line-number" data-line-number="197"></td>
        <td id="LC197" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">70</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>screen<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">250</span>, <span class="pl-c1">81</span>, <span class="pl-c1">188</span>),</td>
      </tr>
      <tr>
        <td id="L198" class="blob-num js-line-number" data-line-number="198"></td>
        <td id="LC198" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">71</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>bucket<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">2</span>.<span class="pl-c1">5</span>, <span class="pl-c1">1</span>, <span class="pl-c1">19</span>),</td>
      </tr>
      <tr>
        <td id="L199" class="blob-num js-line-number" data-line-number="199"></td>
        <td id="LC199" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">72</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>lipstick<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">24</span>.<span class="pl-c1">75</span>, <span class="pl-c1">3</span>, <span class="pl-c1">44</span>),</td>
      </tr>
      <tr>
        <td id="L200" class="blob-num js-line-number" data-line-number="200"></td>
        <td id="LC200" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">73</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>wardrobe<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">120</span>.<span class="pl-c1">75</span>, <span class="pl-c1">9</span>, <span class="pl-c1">71</span>),</td>
      </tr>
      <tr>
        <td id="L201" class="blob-num js-line-number" data-line-number="201"></td>
        <td id="LC201" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">74</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>blue dress size 40<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">88</span>.<span class="pl-c1">9</span>, <span class="pl-c1">7</span>, <span class="pl-c1">113</span>),</td>
      </tr>
      <tr>
        <td id="L202" class="blob-num js-line-number" data-line-number="202"></td>
        <td id="LC202" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">75</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>newspaper<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">1</span>.<span class="pl-c1">5</span>, <span class="pl-c1">95</span>, <span class="pl-c1">172</span>),</td>
      </tr>
      <tr>
        <td id="L203" class="blob-num js-line-number" data-line-number="203"></td>
        <td id="LC203" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">76</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>scanner<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">350</span>, <span class="pl-c1">14</span>, <span class="pl-c1">62</span>),</td>
      </tr>
      <tr>
        <td id="L204" class="blob-num js-line-number" data-line-number="204"></td>
        <td id="LC204" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">77</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>camera<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">550</span>.<span class="pl-c1">7</span>, <span class="pl-c1">17</span>, <span class="pl-c1">95</span>),</td>
      </tr>
      <tr>
        <td id="L205" class="blob-num js-line-number" data-line-number="205"></td>
        <td id="LC205" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">78</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>camcorder<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">788</span>.<span class="pl-c1">99</span>, <span class="pl-c1">25</span>, <span class="pl-c1">127</span>),</td>
      </tr>
      <tr>
        <td id="L206" class="blob-num js-line-number" data-line-number="206"></td>
        <td id="LC206" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">79</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>gun<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">420</span>.<span class="pl-c1">1</span>, <span class="pl-c1">81</span>, <span class="pl-c1">107</span>),</td>
      </tr>
      <tr>
        <td id="L207" class="blob-num js-line-number" data-line-number="207"></td>
        <td id="LC207" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">80</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>domestic dog<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">200</span>, <span class="pl-c1">19</span>, <span class="pl-c1">129</span>),</td>
      </tr>
      <tr>
        <td id="L208" class="blob-num js-line-number" data-line-number="208"></td>
        <td id="LC208" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">81</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>horse<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">759</span>.<span class="pl-c1">5</span>, <span class="pl-c1">30</span>, <span class="pl-c1">115</span>),</td>
      </tr>
      <tr>
        <td id="L209" class="blob-num js-line-number" data-line-number="209"></td>
        <td id="LC209" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">82</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>truck<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">7800</span>.<span class="pl-c1">5</span>, <span class="pl-c1">32</span>, <span class="pl-c1">123</span>),</td>
      </tr>
      <tr>
        <td id="L210" class="blob-num js-line-number" data-line-number="210"></td>
        <td id="LC210" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">83</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>soccer ball<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">95</span>.<span class="pl-c1">49</span>, <span class="pl-c1">54</span>, <span class="pl-c1">155</span>),</td>
      </tr>
      <tr>
        <td id="L211" class="blob-num js-line-number" data-line-number="211"></td>
        <td id="LC211" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">84</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>gold earring<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">385</span>, <span class="pl-c1">75</span>, <span class="pl-c1">92</span>),</td>
      </tr>
      <tr>
        <td id="L212" class="blob-num js-line-number" data-line-number="212"></td>
        <td id="LC212" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">85</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>basket<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">250</span>.<span class="pl-c1">45</span>, <span class="pl-c1">46</span>, <span class="pl-c1">142</span>),</td>
      </tr>
      <tr>
        <td id="L213" class="blob-num js-line-number" data-line-number="213"></td>
        <td id="LC213" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">86</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>bikini<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">85</span>.<span class="pl-c1">2</span>, <span class="pl-c1">12</span>, <span class="pl-c1">57</span>),</td>
      </tr>
      <tr>
        <td id="L214" class="blob-num js-line-number" data-line-number="214"></td>
        <td id="LC214" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">87</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>red skirt<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">15</span>.<span class="pl-c1">9</span>, <span class="pl-c1">18</span>, <span class="pl-c1">188</span>),</td>
      </tr>
      <tr>
        <td id="L215" class="blob-num js-line-number" data-line-number="215"></td>
        <td id="LC215" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">88</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>copier machine<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">800</span>.<span class="pl-c1">7</span>, <span class="pl-c1">50</span>, <span class="pl-c1">160</span>),</td>
      </tr>
      <tr>
        <td id="L216" class="blob-num js-line-number" data-line-number="216"></td>
        <td id="LC216" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">89</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>handbag<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">35</span>.<span class="pl-c1">9</span>, <span class="pl-c1">8</span>, <span class="pl-c1">108</span>),</td>
      </tr>
      <tr>
        <td id="L217" class="blob-num js-line-number" data-line-number="217"></td>
        <td id="LC217" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">90</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>bath towel<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">25</span>.<span class="pl-c1">1</span>, <span class="pl-c1">11</span>, <span class="pl-c1">186</span>),</td>
      </tr>
      <tr>
        <td id="L218" class="blob-num js-line-number" data-line-number="218"></td>
        <td id="LC218" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">91</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>coffee machine<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">210</span>.<span class="pl-c1">89</span>, <span class="pl-c1">15</span>, <span class="pl-c1">170</span>),</td>
      </tr>
      <tr>
        <td id="L219" class="blob-num js-line-number" data-line-number="219"></td>
        <td id="LC219" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">92</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>wedding dress<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">690</span>, <span class="pl-c1">26</span>, <span class="pl-c1">48</span>),</td>
      </tr>
      <tr>
        <td id="L220" class="blob-num js-line-number" data-line-number="220"></td>
        <td id="LC220" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">93</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>man sun glasses<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">80</span>.<span class="pl-c1">7</span>, <span class="pl-c1">19</span>, <span class="pl-c1">174</span>),</td>
      </tr>
      <tr>
        <td id="L221" class="blob-num js-line-number" data-line-number="221"></td>
        <td id="LC221" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">94</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>candle<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">7</span>.<span class="pl-c1">5</span>, <span class="pl-c1">22</span>, <span class="pl-c1">102</span>),</td>
      </tr>
      <tr>
        <td id="L222" class="blob-num js-line-number" data-line-number="222"></td>
        <td id="LC222" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">95</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>scarf<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">11</span>.<span class="pl-c1">9</span>, <span class="pl-c1">7</span>, <span class="pl-c1">143</span>),</td>
      </tr>
      <tr>
        <td id="L223" class="blob-num js-line-number" data-line-number="223"></td>
        <td id="LC223" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">96</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>microwave<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">150</span>.<span class="pl-c1">29</span>, <span class="pl-c1">6</span>, <span class="pl-c1">11</span>),</td>
      </tr>
      <tr>
        <td id="L224" class="blob-num js-line-number" data-line-number="224"></td>
        <td id="LC224" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">97</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>electric oven<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">645</span>, <span class="pl-c1">62</span>, <span class="pl-c1">171</span>),</td>
      </tr>
      <tr>
        <td id="L225" class="blob-num js-line-number" data-line-number="225"></td>
        <td id="LC225" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">98</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>play station<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">256</span>.<span class="pl-c1">75</span>, <span class="pl-c1">12</span>, <span class="pl-c1">188</span>),</td>
      </tr>
      <tr>
        <td id="L226" class="blob-num js-line-number" data-line-number="226"></td>
        <td id="LC226" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">99</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>dvd<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">126</span>.<span class="pl-c1">84</span>, <span class="pl-c1">14</span>, <span class="pl-c1">113</span>),</td>
      </tr>
      <tr>
        <td id="L227" class="blob-num js-line-number" data-line-number="227"></td>
        <td id="LC227" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">100</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>magazine<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">3</span>.<span class="pl-c1">5</span>, <span class="pl-c1">8</span>, <span class="pl-c1">152</span>);</td>
      </tr>
      <tr>
        <td id="L228" class="blob-num js-line-number" data-line-number="228"></td>
        <td id="LC228" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L229" class="blob-num js-line-number" data-line-number="229"></td>
        <td id="LC229" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L230" class="blob-num js-line-number" data-line-number="230"></td>
        <td id="LC230" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ALTER</span> <span class="pl-k">TABLE</span> <span class="pl-s"><span class="pl-pds">`</span>customers<span class="pl-pds">`</span></span></td>
      </tr>
      <tr>
        <td id="L231" class="blob-num js-line-number" data-line-number="231"></td>
        <td id="LC231" class="blob-code blob-code-inner js-file-line">  ADD <span class="pl-k">PRIMARY KEY</span> (<span class="pl-s"><span class="pl-pds">`</span>id<span class="pl-pds">`</span></span>);</td>
      </tr>
      <tr>
        <td id="L232" class="blob-num js-line-number" data-line-number="232"></td>
        <td id="LC232" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L233" class="blob-num js-line-number" data-line-number="233"></td>
        <td id="LC233" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ALTER</span> <span class="pl-k">TABLE</span> <span class="pl-s"><span class="pl-pds">`</span>items<span class="pl-pds">`</span></span></td>
      </tr>
      <tr>
        <td id="L234" class="blob-num js-line-number" data-line-number="234"></td>
        <td id="LC234" class="blob-code blob-code-inner js-file-line">  ADD <span class="pl-k">PRIMARY KEY</span> (<span class="pl-s"><span class="pl-pds">`</span>id<span class="pl-pds">`</span></span>);</td>
      </tr>
      <tr>
        <td id="L235" class="blob-num js-line-number" data-line-number="235"></td>
        <td id="LC235" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L236" class="blob-num js-line-number" data-line-number="236"></td>
        <td id="LC236" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */</span>;</td>
      </tr>
      <tr>
        <td id="L237" class="blob-num js-line-number" data-line-number="237"></td>
        <td id="LC237" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */</span>;</td>
      </tr>
      <tr>
        <td id="L238" class="blob-num js-line-number" data-line-number="238"></td>
        <td id="LC238" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */</span>;</td>
      </tr>
</table>

  </div>

</div>

<button type="button" data-facebox="#jump-to-line" data-facebox-class="linejump" data-hotkey="l" class="hidden">Jump to Line</button>
<div id="jump-to-line" style="display:none">
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="form-control linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

  </div>
  <div class="modal-backdrop"></div>
</div>


    </div>
  </div>

    </div>

        <div class="container site-footer-container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage" class="site-footer-mark" title="GitHub">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="24" version="1.1" viewBox="0 0 16 16" width="24"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59 0.4 0.07 0.55-0.17 0.55-0.38 0-0.19-0.01-0.82-0.01-1.49-2.01 0.37-2.53-0.49-2.69-0.94-0.09-0.23-0.48-0.94-0.82-1.13-0.28-0.15-0.68-0.52-0.01-0.53 0.63-0.01 1.08 0.58 1.23 0.82 0.72 1.21 1.87 0.87 2.33 0.66 0.07-0.52 0.28-0.87 0.51-1.07-1.78-0.2-3.64-0.89-3.64-3.95 0-0.87 0.31-1.59 0.82-2.15-0.08-0.2-0.36-1.02 0.08-2.12 0 0 0.67-0.21 2.2 0.82 0.64-0.18 1.32-0.27 2-0.27 0.68 0 1.36 0.09 2 0.27 1.53-1.04 2.2-0.82 2.2-0.82 0.44 1.1 0.16 1.92 0.08 2.12 0.51 0.56 0.82 1.27 0.82 2.15 0 3.07-1.87 3.75-3.65 3.95 0.29 0.25 0.54 0.73 0.54 1.48 0 1.07-0.01 1.93-0.01 2.2 0 0.21 0.15 0.46 0.55 0.38C13.71 14.53 16 11.53 16 8 16 3.58 12.42 0 8 0z"></path></svg>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2016 <span title="0.09851s from github-fe141-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



    

    <div id="ajax-error-message" class="ajax-error-message flash flash-error">
      <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M15.72 12.5l-6.85-11.98C8.69 0.21 8.36 0.02 8 0.02s-0.69 0.19-0.87 0.5l-6.85 11.98c-0.18 0.31-0.18 0.69 0 1C0.47 13.81 0.8 14 1.15 14h13.7c0.36 0 0.69-0.19 0.86-0.5S15.89 12.81 15.72 12.5zM9 12H7V10h2V12zM9 9H7V5h2V9z"></path></svg>
      <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
        <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48-3.75-3.75-3.75 3.75-1.48-1.48 3.75-3.75L0.77 4.25l1.48-1.48 3.75 3.75 3.75-3.75 1.48 1.48-3.75 3.75z"></path></svg>
      </button>
      Something went wrong with that request. Please try again.
    </div>


      
      <script crossorigin="anonymous" integrity="sha256-hR3lVUbYeteG8+/vO1Y0+PikDWf6bUT4VNnpl2fpyaI=" src="https://assets-cdn.github.com/assets/frameworks-851de55546d87ad786f3efef3b5634f8f8a40d67fa6d44f854d9e99767e9c9a2.js"></script>
      <script async="async" crossorigin="anonymous" integrity="sha256-mm3jxdPdk82dZjim0bzCfrfL+a/dCCdx6pAPmZZZeiQ=" src="https://assets-cdn.github.com/assets/github-9a6de3c5d3dd93cd9d6638a6d1bcc27eb7cbf9afdd082771ea900f9996597a24.js"></script>
      
      
      
      
      
      
    <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner hidden">
      <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M15.72 12.5l-6.85-11.98C8.69 0.21 8.36 0.02 8 0.02s-0.69 0.19-0.87 0.5l-6.85 11.98c-0.18 0.31-0.18 0.69 0 1C0.47 13.81 0.8 14 1.15 14h13.7c0.36 0 0.69-0.19 0.86-0.5S15.89 12.81 15.72 12.5zM9 12H7V10h2V12zM9 9H7V5h2V9z"></path></svg>
      <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
      <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
    </div>
    <div class="facebox" id="facebox" style="display:none;">
  <div class="facebox-popup">
    <div class="facebox-content" role="dialog" aria-labelledby="facebox-header" aria-describedby="facebox-description">
    </div>
    <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48-3.75-3.75-3.75 3.75-1.48-1.48 3.75-3.75L0.77 4.25l1.48-1.48 3.75 3.75 3.75-3.75 1.48 1.48-3.75 3.75z"></path></svg>
    </button>
  </div>
</div>

  </body>
</html>

