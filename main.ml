  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>advancedb/main.ml at master · gauravsc/advancedb</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144.png" />
    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="vn7FJ3MB0iMVfN3jyrQAaVbKFpuDre2ew9+l9Ya2AJE=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-a2a679dc329adac0ae0f3c8a55962cd292b6bb2e.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-ddbc9d73271e204f76d48b6abb07e8791f16a0d5.css" media="screen" rel="stylesheet" type="text/css" />
    


    <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-eee761b9d5e06efb064aaaf528c44ef8e1601e71.js" type="text/javascript"></script>
    <script src="https://a248.e.akamai.net/assets.github.com/assets/github-9dff60969c141f6060b5c427c34662424aefe349.js" type="text/javascript"></script>
    

      <link rel='permalink' href='/gauravsc/advancedb/blob/e0d981d619f2825e2e36a98ea71686c6ebd54ddc/main.ml'>
    <meta property="og:title" content="advancedb"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/gauravsc/advancedb"/>
    <meta property="og:image" content="https://secure.gravatar.com/avatar/e6fc48e265668fd6d5c0cf42bbb8d9df?s=420&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="advance db project for UPMC, Paris. Contribute to advancedb development by creating an account on GitHub."/>

    <meta name="description" content="advance db project for UPMC, Paris. Contribute to advancedb development by creating an account on GitHub." />

  <link href="https://github.com/gauravsc/advancedb/commits/master.atom" rel="alternate" title="Recent Commits to advancedb:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob linux vis-public env-production ">
    <div id="wrapper">

      

      

      


        <div class="header header-logged-in true">
          <div class="container clearfix">

            <a class="header-logo-blacktocat" href="https://github.com/">
  <span class="mega-icon mega-icon-blacktocat"></span>
</a>

            <div class="divider-vertical"></div>

              <a href="/notifications" class="notification-indicator tooltipped downwards" title="You have no unread notifications">
    <span class="mail-status all-read"></span>
  </a>
  <div class="divider-vertical"></div>


              
  <div class="topsearch command-bar-activated">
    <form accept-charset="UTF-8" action="/search" class="command_bar_form" id="top_search_form" method="get">
  <a href="/search/advanced" class="advanced-search tooltipped downwards command-bar-search" id="advanced_search" title="Advanced search"><span class="mini-icon mini-icon-advanced-search "></span></a>

  <input type="text" name="q" id="command-bar" placeholder="Search or type a command" tabindex="1" data-username="SandraMNE" autocapitalize="off">

  <span class="mini-icon help tooltipped downwards" title="Show command bar help">
    <span class="mini-icon mini-icon-help"></span>
  </span>

  <input type="hidden" name="ref" value="commandbar">

  <div class="divider-vertical"></div>
</form>



    <ul class="top-nav">
        <li class="explore"><a href="https://github.com/explore">Explore</a></li>
        <li><a href="https://gist.github.com">Gist</a></li>
        <li><a href="/blog">Blog</a></li>
      <li><a href="http://help.github.com">Help</a></li>
    </ul>
  </div>


            

  
    <ul id="user-links">
      <li>
        <a href="https://github.com/SandraMNE" class="name">
          <img height="20" src="https://secure.gravatar.com/avatar/cf75829aa44fb1787df9b963b918fb2c?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /> SandraMNE
        </a>
      </li>
      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo">
          <span class="mini-icon mini-icon-create"></span>
        </a>
      </li>
      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          title="Account settings ">
          <span class="mini-icon mini-icon-account-settings"></span>
        </a>
      </li>
      <li>
          <a href="/logout" data-method="post" id="logout" class="tooltipped downwards" title="Sign out">
            <span class="mini-icon mini-icon-logout"></span>
          </a>
      </li>
    </ul>



            
          </div>
        </div>


      

      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu">
          <div class="container">
            <div class="title-actions-bar">
              


                  <ul class="pagehead-actions">
          <li class="nspr">
            <a href="/gauravsc/advancedb/pull/new/master" class="minibutton btn-pull-request" icon_class="mini-icon-pull-request"><span class="mini-icon mini-icon-pull-request"></span>Pull Request</a>
          </li>

          <li class="subscription">
              <form accept-charset="UTF-8" action="/notifications/subscribe" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="vn7FJ3MB0iMVfN3jyrQAaVbKFpuDre2ew9+l9Ya2AJE=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="6308589" />
  <div class="context-menu-container js-menu-container js-context-menu">
    <span class="minibutton switcher bigger js-menu-target">
      <span class="js-context-button">
          <span class="mini-icon mini-icon-watching"></span>Watch
      </span>
    </span>

    <div class="context-pane js-menu-content">
      <a href="#" class="close js-menu-close"><span class="mini-icon mini-icon-remove-close"></span></a>
      <div class="context-title">Notification status</div>

      <div class="context-body pane-selector">
        <ul class="js-navigation-container">
          <li class="selector-item js-navigation-item js-navigation-target selected">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input checked="checked" id="do_included" name="do" type="radio" value="included" />
              <h4>Not watching</h4>
              <p>You will only receive notifications when you participate or are mentioned.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-watching"></span>
              Watch
            </span>
          </li>
          <li class="selector-item js-navigation-item js-navigation-target ">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input id="do_subscribed" name="do" type="radio" value="subscribed" />
              <h4>Watching</h4>
              <p>You will receive all notifications for this repository.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-unwatch"></span>
              Unwatch
            </span>
          </li>
          <li class="selector-item js-navigation-item js-navigation-target ">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input id="do_ignore" name="do" type="radio" value="ignore" />
              <h4>Ignored</h4>
              <p>You will not receive notifications for this repository.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-mute"></span>
              Stop ignoring
            </span>
          </li>
        </ul>
      </div>
    </div>
  </div>
</form>
          </li>

          <li class="js-toggler-container js-social-container starring-container ">
            <a href="/gauravsc/advancedb/unstar" class="minibutton js-toggler-target starred" data-remote="true" data-method="post" rel="nofollow">
              <span class="mini-icon mini-icon-star"></span>Unstar
            </a><a href="/gauravsc/advancedb/star" class="minibutton js-toggler-target unstarred" data-remote="true" data-method="post" rel="nofollow">
              <span class="mini-icon mini-icon-star"></span>Star
            </a><a class="social-count js-social-count" href="/gauravsc/advancedb/stargazers">0</a>
          </li>

              <li><a href="/gauravsc/advancedb/fork" class="minibutton js-toggler-target fork-button lighter" rel="nofollow" data-method="post"><span class="mini-icon mini-icon-fork"></span>Fork</a><a href="/gauravsc/advancedb/network" class="social-count">1</a>
              </li>


    </ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-icon mega-icon-public-repo"></span>
                <span class="author vcard">
                  <a href="/gauravsc" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">gauravsc</span>
                  </a></span> /
                <strong><a href="/gauravsc/advancedb" class="js-current-repository">advancedb</a></strong>
              </h1>
            </div>

            

  <ul class="tabs">
    <li><a href="/gauravsc/advancedb" class="selected" highlight="repo_sourcerepo_downloadsrepo_commitsrepo_tagsrepo_branches">Code</a></li>
    <li><a href="/gauravsc/advancedb/network" highlight="repo_network">Network</a></li>
    <li><a href="/gauravsc/advancedb/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>0</span></a></li>

      <li><a href="/gauravsc/advancedb/issues" highlight="repo_issues">Issues <span class='counter'>0</span></a></li>

      <li><a href="/gauravsc/advancedb/wiki" highlight="repo_wiki">Wiki</a></li>


    <li><a href="/gauravsc/advancedb/graphs" highlight="repo_graphsrepo_contributors">Graphs</a></li>


  </ul>
  
<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
      <li><a href="/gauravsc/advancedb/tags" class="tabnav-tab" highlight="repo_tags">Tags <span class="counter blank">0</span></a></li>
      <li><a href="/gauravsc/advancedb/downloads" class="tabnav-tab" highlight="repo_downloads">Downloads <span class="counter blank">0</span></a></li>
    </ul>
    
  </span>

  <div class="tabnav-widget scope">


    <div class="context-menu-container js-menu-container js-context-menu">
      <a href="#"
         class="minibutton bigger switcher js-menu-target js-commitish-button btn-branch repo-tree"
         data-hotkey="w"
         data-ref="master">
         <span><em class="mini-icon mini-icon-branch"></em><i>branch:</i> master</span>
      </a>

      <div class="context-pane commitish-context js-menu-content">
        <a href="#" class="close js-menu-close"><span class="mini-icon mini-icon-remove-close"></span></a>
        <div class="context-title">Switch branches/tags</div>
        <div class="context-body pane-selector commitish-selector js-navigation-container">
          <div class="filterbar">
            <input type="text" id="context-commitish-filter-field" class="js-navigation-enable js-filterable-field" placeholder="Filter branches/tags">
            <ul class="tabs">
              <li><a href="#" data-filter="branches" class="selected">Branches</a></li>
                <li><a href="#" data-filter="tags">Tags</a></li>
            </ul>
          </div>

          <div class="js-filter-tab js-filter-branches">
            <div data-filterable-for="context-commitish-filter-field" data-filterable-type=substring>
                <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target selected">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/gauravsc/advancedb/blob/master/main.ml" class="js-navigation-open" data-name="master" rel="nofollow">master</a>
                  </h4>
                </div>
            </div>
            <div class="no-results">Nothing to show</div>
          </div>

            <div class="js-filter-tab js-filter-tags filter-tab-empty" style="display:none">
              <div data-filterable-for="context-commitish-filter-field" data-filterable-type=substring>
              </div>
              <div class="no-results">Nothing to show</div>
            </div>
        </div>
      </div><!-- /.commitish-context-context -->
    </div>
  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/gauravsc/advancedb" class="selected tabnav-tab" highlight="repo_source">Files</a></li>
    <li><a href="/gauravsc/advancedb/commits/master" class="tabnav-tab" highlight="repo_commits">Commits</a></li>
    <li><a href="/gauravsc/advancedb/branches" class="tabnav-tab" highlight="repo_branches" rel="nofollow">Branches <span class="counter ">1</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:c91c078ebffc1ac8bf5dabe4c9dcb1d9 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:c91c078ebffc1ac8bf5dabe4c9dcb1d9 -->

<div id="slider">


    <div class="frame-meta">

      <p title="This is a placeholder element" class="js-history-link-replace hidden"></p>
      <div class="breadcrumb">
        <span class='bold'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/gauravsc/advancedb" class="js-slide-to" data-direction="back" itemscope="url"><span itemprop="title">advancedb</span></a></span></span> / <strong class="final-path">main.ml</strong> <span class="js-clippy mini-icon mini-icon-clippy " data-clipboard-text="main.ml" data-copied-hint="copied!" data-copy-hint="copy to clipboard"></span>
      </div>

      <a href="/gauravsc/advancedb/find/master" class="js-slide-to" data-hotkey="t" style="display:none">Show File Finder</a>

        <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/gauravsc/advancedb/contributors/master/main.ml">
          Fetching contributors…

          <div class="participation">
            <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif?1329921026" width="16" /></p>
            <p class="loader-error">Cannot retrieve contributors at this time</p>
          </div>
        </div>

    </div><!-- ./.frame-meta -->

    <div class="frames">
      <div class="frame" data-permalink-url="/gauravsc/advancedb/blob/e0d981d619f2825e2e36a98ea71686c6ebd54ddc/main.ml" data-title="advancedb/main.ml at master · gauravsc/advancedb · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="mini-icon mini-icon-text-file"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>98 lines (88 sloc)</span>
                <span>3.265 kb</span>
              </div>
              <ul class="button-group actions">
                  <li>
                        <a class="grouped-button minibutton bigger lighter"
                           href="/gauravsc/advancedb/edit/master/main.ml"
                           data-method="post" rel="nofollow" data-hotkey="e">Edit</a>
                  </li>
                <li><a href="/gauravsc/advancedb/raw/master/main.ml" class="minibutton grouped-button bigger lighter" id="raw-url">Raw</a></li>
                  <li><a href="/gauravsc/advancedb/blame/master/main.ml" class="minibutton grouped-button bigger lighter">Blame</a></li>
                <li><a href="/gauravsc/advancedb/commits/master/main.ml" class="minibutton grouped-button bigger lighter" rel="nofollow">History</a></li>
              </ul>
            </div>
                <div class="data type-ocaml">
      <table cellpadding="0" cellspacing="0" class="lines">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
</pre>
          </td>
          <td width="100%">
                <div class="highlight"><pre><div class='line' id='LC1'><span class="k">open</span> <span class="nc">Lexer</span> <span class="o">;;</span></div><div class='line' id='LC2'><span class="k">exception</span> <span class="nc">Eof</span>  <span class="o">;;</span></div><div class='line' id='LC3'><span class="k">open</span> <span class="nc">Printf</span> <span class="o">;;</span></div><div class='line' id='LC4'><span class="k">open</span> <span class="nc">Postgresql</span> <span class="o">;;</span></div><div class='line' id='LC5'><br/></div><div class='line' id='LC6'><br/></div><div class='line' id='LC7'><span class="c">(* check for options of yadi command line *)</span></div><div class='line' id='LC8'><span class="k">let</span> <span class="o">_</span> <span class="o">=</span></div><div class='line' id='LC9'>&nbsp;&nbsp;<span class="k">if</span> <span class="nn">Array</span><span class="p">.</span><span class="n">length</span> <span class="nn">Sys</span><span class="p">.</span><span class="n">argv</span> <span class="o">&gt;</span><span class="mi">4</span> <span class="k">then</span> <span class="o">(</span></div><div class='line' id='LC10'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nn">Printf</span><span class="p">.</span><span class="n">printf</span> <span class="s2">&quot;\</span></div><div class='line' id='LC11'><span class="s2">      Usage:  yadi &lt;connection info&gt;</span><span class="se">\n</span><span class="s2">\</span></div><div class='line' id='LC12'><span class="s2">      Enter the Datalog Interpreter and connect to the PostgreSQL database</span><span class="se">\n</span><span class="s2">\</span></div><div class='line' id='LC13'><span class="s2">      with parameters:</span><span class="se">\n</span><span class="s2">\</span></div><div class='line' id='LC14'><span class="se">\n</span><span class="s2">\</span></div><div class='line' id='LC15'><span class="s2">          * host=      hostname of the PostgreSQL database server</span><span class="se">\n</span><span class="s2">\</span></div><div class='line' id='LC16'><span class="s2">          * port=      connection port of the PostgreSQL database server</span><span class="se">\n</span><span class="s2">\</span></div><div class='line' id='LC17'><span class="s2">          * user=      user or role in PostgreSQL</span><span class="se">\n</span><span class="s2">\</span></div><div class='line' id='LC18'><span class="s2">          * password=  password of the user </span><span class="se">\\</span><span class="s2">!/ no encryption</span><span class="se">\n</span><span class="s2">\</span></div><div class='line' id='LC19'><span class="s2">          * dbname=    database name to work with in PostgreSQL</span><span class="se">\n</span><span class="s2">\</span></div><div class='line' id='LC20'><span class="se">\n</span><span class="s2">\</span></div><div class='line' id='LC21'><span class="s2">      Example:</span><span class="se">\n</span><span class="s2">\</span></div><div class='line' id='LC22'><span class="s2">        </span><span class="se">\t</span><span class="s2"> yadi </span><span class="se">\&quot;</span><span class="s2">host=localhost port=5432 user=test password=test dbname=test_db</span><span class="se">\&quot;\n</span><span class="s2">&quot;</span><span class="o">;</span></div><div class='line' id='LC23'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">exit</span> <span class="mi">1</span><span class="o">)</span></div><div class='line' id='LC24'><span class="o">;;</span></div><div class='line' id='LC25'><br/></div><div class='line' id='LC26'><span class="c">(* assign postgreSQL connection parameters to conninfo variable *)</span></div><div class='line' id='LC27'><span class="k">let</span> <span class="n">conninfo</span> <span class="o">=</span> <span class="nn">Sys</span><span class="p">.</span><span class="n">argv</span><span class="o">.(</span><span class="mi">1</span><span class="o">)</span> <span class="o">;;</span></div><div class='line' id='LC28'><span class="k">let</span> <span class="n">input_chan</span><span class="o">=</span> <span class="k">if</span> <span class="nn">Array</span><span class="p">.</span><span class="n">length</span> <span class="nn">Sys</span><span class="p">.</span><span class="n">argv</span> <span class="o">&gt;</span><span class="mi">2</span> <span class="k">then</span> <span class="o">(</span><span class="n">open_in</span> <span class="nn">Sys</span><span class="p">.</span><span class="n">argv</span><span class="o">.(</span><span class="mi">2</span><span class="o">))</span> <span class="k">else</span> <span class="n">stdin</span><span class="o">;;</span></div><div class='line' id='LC29'><span class="k">let</span> <span class="n">output_chan</span><span class="o">=</span><span class="k">if</span> <span class="nn">Array</span><span class="p">.</span><span class="n">length</span> <span class="nn">Sys</span><span class="p">.</span><span class="n">argv</span> <span class="o">&gt;</span><span class="mi">3</span> <span class="k">then</span> <span class="o">(</span><span class="n">open_out</span> <span class="nn">Sys</span><span class="p">.</span><span class="n">argv</span><span class="o">.(</span><span class="mi">3</span><span class="o">))</span> <span class="k">else</span> <span class="n">stdout</span><span class="o">;;</span></div><div class='line' id='LC30'><span class="c">(* pretty print connection informations *)</span></div><div class='line' id='LC31'><span class="k">let</span> <span class="n">print_conn_info</span> <span class="n">conn</span> <span class="o">=</span></div><div class='line' id='LC32'>&nbsp;&nbsp;<span class="n">printf</span> <span class="s2">&quot;dbname    = %s</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">conn</span><span class="o">#</span><span class="n">db</span><span class="o">;</span></div><div class='line' id='LC33'>&nbsp;&nbsp;<span class="n">printf</span> <span class="s2">&quot;user      = %s</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">conn</span><span class="o">#</span><span class="n">user</span><span class="o">;</span></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="n">printf</span> <span class="s2">&quot;password  = %s</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">conn</span><span class="o">#</span><span class="n">pass</span><span class="o">;</span></div><div class='line' id='LC35'>&nbsp;&nbsp;<span class="n">printf</span> <span class="s2">&quot;host      = %s</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">conn</span><span class="o">#</span><span class="n">host</span><span class="o">;</span></div><div class='line' id='LC36'>&nbsp;&nbsp;<span class="n">printf</span> <span class="s2">&quot;port      = %s</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">conn</span><span class="o">#</span><span class="n">port</span><span class="o">;</span></div><div class='line' id='LC37'>&nbsp;&nbsp;<span class="n">printf</span> <span class="s2">&quot;tty       = %s</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">conn</span><span class="o">#</span><span class="n">tty</span><span class="o">;</span></div><div class='line' id='LC38'>&nbsp;&nbsp;<span class="n">printf</span> <span class="s2">&quot;options   = %s</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">conn</span><span class="o">#</span><span class="n">options</span><span class="o">;</span></div><div class='line' id='LC39'>&nbsp;&nbsp;<span class="n">printf</span> <span class="s2">&quot;pid       = %i</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">conn</span><span class="o">#</span><span class="n">backend_pid</span></div><div class='line' id='LC40'>&nbsp;&nbsp;</div><div class='line' id='LC41'><br/></div><div class='line' id='LC42'><span class="o">;;</span></div><div class='line' id='LC43'><br/></div><div class='line' id='LC44'><span class="c">(* pretty print answer set of a query *)</span></div><div class='line' id='LC45'><span class="k">let</span> <span class="n">print_res</span> <span class="n">conn</span> <span class="n">res</span> <span class="o">=</span></div><div class='line' id='LC46'>&nbsp;&nbsp;<span class="k">match</span> <span class="n">res</span><span class="o">#</span><span class="n">status</span> <span class="k">with</span></div><div class='line' id='LC47'>&nbsp;&nbsp;<span class="o">|</span> <span class="nc">Empty_query</span> <span class="o">-&gt;</span> <span class="n">printf</span> <span class="s2">&quot;Empty query</span><span class="se">\n</span><span class="s2">&quot;</span></div><div class='line' id='LC48'>&nbsp;&nbsp;<span class="o">|</span> <span class="nc">Tuples_ok</span> <span class="o">-&gt;</span></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">fprintf</span> <span class="n">output_chan</span> <span class="s2">&quot;Tuples ok</span><span class="se">\n</span><span class="s2">&quot;</span><span class="o">;</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">fprintf</span> <span class="n">output_chan</span> <span class="s2">&quot;%i tuples with %i fields</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">res</span><span class="o">#</span><span class="n">ntuples</span> <span class="n">res</span><span class="o">#</span><span class="n">nfields</span><span class="o">;</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">print_endline</span> <span class="o">(</span><span class="nn">String</span><span class="p">.</span><span class="n">concat</span> <span class="s2">&quot;;&quot;</span> <span class="n">res</span><span class="o">#</span><span class="n">get_fnames_lst</span><span class="o">);</span></div><div class='line' id='LC52'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="n">tuple</span> <span class="o">=</span> <span class="mi">0</span> <span class="k">to</span> <span class="n">res</span><span class="o">#</span><span class="n">ntuples</span> <span class="o">-</span> <span class="mi">1</span> <span class="k">do</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="n">field</span> <span class="o">=</span> <span class="mi">0</span> <span class="k">to</span> <span class="n">res</span><span class="o">#</span><span class="n">nfields</span> <span class="o">-</span> <span class="mi">1</span>  <span class="k">do</span></div><div class='line' id='LC54'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">fprintf</span> <span class="n">output_chan</span> <span class="s2">&quot;%s, &quot;</span> <span class="o">(</span><span class="n">res</span><span class="o">#</span><span class="n">getvalue</span> <span class="n">tuple</span> <span class="n">field</span><span class="o">)</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">done</span><span class="o">;</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">print_newline</span> <span class="bp">()</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">done</span></div><div class='line' id='LC58'>&nbsp;&nbsp;<span class="o">|</span> <span class="nc">Bad_response</span> <span class="o">-&gt;</span> <span class="n">printf</span> <span class="s2">&quot;Bad response: %s</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">res</span><span class="o">#</span><span class="n">error</span><span class="o">;</span> <span class="n">conn</span><span class="o">#</span><span class="n">reset</span></div><div class='line' id='LC59'>&nbsp;&nbsp;<span class="o">|</span> <span class="nc">Nonfatal_error</span> <span class="o">-&gt;</span> <span class="n">printf</span> <span class="s2">&quot;Non fatal error: %s</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">res</span><span class="o">#</span><span class="n">error</span></div><div class='line' id='LC60'>&nbsp;&nbsp;<span class="o">|</span> <span class="nc">Fatal_error</span> <span class="o">-&gt;</span> <span class="n">printf</span> <span class="s2">&quot;Fatal error: %s</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">res</span><span class="o">#</span><span class="n">error</span></div><div class='line' id='LC61'>&nbsp;&nbsp;<span class="o">|</span> <span class="o">_</span> 			<span class="o">-&gt;</span> <span class="n">failwith</span> <span class="s2">&quot;error: unexpected status&quot;</span></div><div class='line' id='LC62'><span class="o">;;</span></div><div class='line' id='LC63'><br/></div><div class='line' id='LC64'><span class="c">(* catch answers from the db server *)</span></div><div class='line' id='LC65'><span class="k">let</span> <span class="k">rec</span> <span class="n">dump_res</span> <span class="n">conn</span> <span class="o">=</span></div><div class='line' id='LC66'>&nbsp;&nbsp;<span class="k">match</span> <span class="n">conn</span><span class="o">#</span><span class="n">get_result</span> <span class="k">with</span></div><div class='line' id='LC67'>&nbsp;&nbsp;<span class="o">|</span> <span class="nc">Some</span> <span class="n">res</span> <span class="o">-&gt;</span> <span class="n">print_res</span> <span class="n">conn</span> <span class="n">res</span><span class="o">;</span> <span class="n">flush</span> <span class="n">stdout</span><span class="o">;</span> <span class="n">dump_res</span> <span class="n">conn</span></div><div class='line' id='LC68'>&nbsp;&nbsp;<span class="o">|</span> <span class="nc">None</span> <span class="o">-&gt;</span> <span class="bp">()</span></div><div class='line' id='LC69'><span class="o">;;</span></div><div class='line' id='LC70'><br/></div><div class='line' id='LC71'><span class="c">(* everything is done here *)</span></div><div class='line' id='LC72'><span class="k">let</span> <span class="n">main</span> <span class="bp">()</span> <span class="o">=</span></div><div class='line' id='LC73'>&nbsp;&nbsp;<span class="k">let</span> <span class="n">c</span> <span class="o">=</span> <span class="k">new</span> <span class="n">connection</span> <span class="o">~</span><span class="n">conninfo</span> <span class="bp">()</span> <span class="k">in</span></div><div class='line' id='LC74'>&nbsp;&nbsp;<span class="n">print_conn_info</span> <span class="n">c</span><span class="o">;</span> <span class="n">flush</span> <span class="n">stdout</span><span class="o">;</span></div><div class='line' id='LC75'>&nbsp;&nbsp;<span class="n">c</span><span class="o">#</span><span class="n">set_notice_processor</span> <span class="o">(</span><span class="k">fun</span> <span class="n">s</span> <span class="o">-&gt;</span> <span class="n">eprintf</span> <span class="s2">&quot;postgresql error [%s]</span><span class="se">\n</span><span class="s2">&quot;</span> <span class="n">s</span><span class="o">);</span></div><div class='line' id='LC76'>&nbsp;&nbsp;<span class="k">try</span> </div><div class='line' id='LC77'>&nbsp;&nbsp;&nbsp;<span class="c">(*let chan= if (Array.length Sys.argv) = 1 then stdin else  open_in Sys.argv.(2)  in*)</span></div><div class='line' id='LC78'>&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="n">chan</span><span class="o">=</span> <span class="n">input_chan</span> <span class="k">in</span></div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="n">lexbuf</span> <span class="o">=</span> <span class="nn">Lexing</span><span class="p">.</span><span class="n">from_channel</span> <span class="n">chan</span> <span class="k">in</span> </div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">while</span> <span class="bp">true</span> <span class="k">do</span></div><div class='line' id='LC81'>	    <span class="n">print_string</span> <span class="s2">&quot;yadi$ &quot;</span><span class="o">;</span> <span class="n">flush</span> <span class="n">stdout</span><span class="o">;</span></div><div class='line' id='LC82'>&nbsp;&nbsp;&nbsp;&nbsp;	<span class="k">let</span> <span class="n">ast</span> <span class="o">=</span> <span class="nn">Parser</span><span class="p">.</span><span class="n">main</span> <span class="nn">Lexer</span><span class="p">.</span><span class="n">token</span> <span class="n">lexbuf</span> <span class="k">in</span> </div><div class='line' id='LC83'>	    <span class="n">print_endline</span> <span class="o">(</span><span class="nn">Expr</span><span class="p">.</span><span class="n">to_string</span> <span class="n">ast</span><span class="o">);</span> <span class="n">flush</span> <span class="n">stdout</span><span class="o">;</span></div><div class='line' id='LC84'>	    <span class="k">let</span> <span class="n">sql</span> <span class="o">=</span> <span class="o">(</span><span class="k">if</span> <span class="nn">Eval</span><span class="p">.</span><span class="n">is_prog</span> <span class="n">ast</span> <span class="k">then</span> <span class="nn">Eval</span><span class="p">.</span><span class="n">sql_stt</span> <span class="n">ast</span> <span class="k">else</span> <span class="n">invalid_arg</span> <span class="s2">&quot;main&quot;</span> <span class="o">)</span> <span class="k">in</span></div><div class='line' id='LC85'>	    <span class="n">c</span><span class="o">#</span><span class="n">send_query</span> <span class="n">sql</span><span class="o">;</span></div><div class='line' id='LC86'>	    <span class="n">dump_res</span> <span class="n">c</span></div><div class='line' id='LC87'>	<span class="k">done</span></div><div class='line' id='LC88'><span class="k">with</span> <span class="nc">Eof</span> <span class="o">-&gt;</span></div><div class='line' id='LC89'>&nbsp;&nbsp;&nbsp;<span class="n">c</span><span class="o">#</span><span class="n">finish</span><span class="o">;</span> <span class="n">exit</span> <span class="mi">0</span></div><div class='line' id='LC90'><span class="o">;;</span> </div><div class='line' id='LC91'><br/></div><div class='line' id='LC92'><span class="c">(* mainly a call to the above main function *)</span></div><div class='line' id='LC93'><span class="k">let</span> <span class="o">_</span> <span class="o">=</span></div><div class='line' id='LC94'>&nbsp;&nbsp;<span class="k">try</span> <span class="n">main</span> <span class="bp">()</span> <span class="k">with</span></div><div class='line' id='LC95'>&nbsp;&nbsp;<span class="o">|</span> <span class="nc">Error</span> <span class="n">e</span> <span class="o">-&gt;</span> <span class="n">prerr_endline</span> <span class="o">(</span><span class="n">string_of_error</span> <span class="n">e</span><span class="o">)</span></div><div class='line' id='LC96'>&nbsp;&nbsp;<span class="o">|</span> <span class="n">e</span> <span class="o">-&gt;</span> <span class="n">prerr_endline</span> <span class="o">(</span><span class="nn">Printexc</span><span class="p">.</span><span class="n">to_string</span> <span class="n">e</span><span class="o">)</span></div><div class='line' id='LC97'><span class="o">;;</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>
      </div>

      <a href="#jump-to-line" rel="facebox" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
      <div id="jump-to-line" style="display:none">
        <h2>Jump to Line</h2>
        <form accept-charset="UTF-8" class="js-jump-to-line-form">
          <input class="textfield js-jump-to-line-field" type="text">
          <div class="full-button">
            <button type="submit" class="classy">
              Go
            </button>
          </div>
        </form>
      </div>

    </div>
</div>

<div id="js-frame-loading-template" class="frame frame-loading large-loading-area" style="display:none;">
  <img class="js-frame-loading-spinner" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif?1347543534" height="64" width="64">
</div>


        </div>
      </div>
      <div class="context-overlay"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer">
  <div class="container clearfix">

      <dl class="footer_nav">
        <dt>GitHub</dt>
        <dd><a href="https://github.com/about">About us</a></dd>
        <dd><a href="https://github.com/blog">Blog</a></dd>
        <dd><a href="https://github.com/contact">Contact &amp; support</a></dd>
        <dd><a href="http://enterprise.github.com/">GitHub Enterprise</a></dd>
        <dd><a href="http://status.github.com/">Site status</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Applications</dt>
        <dd><a href="http://mac.github.com/">GitHub for Mac</a></dd>
        <dd><a href="http://windows.github.com/">GitHub for Windows</a></dd>
        <dd><a href="http://eclipse.github.com/">GitHub for Eclipse</a></dd>
        <dd><a href="http://mobile.github.com/">GitHub mobile apps</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Services</dt>
        <dd><a href="http://get.gaug.es/">Gauges: Web analytics</a></dd>
        <dd><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></dd>
        <dd><a href="https://gist.github.com">Gist: Code snippets</a></dd>
        <dd><a href="http://jobs.github.com/">Job board</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Documentation</dt>
        <dd><a href="http://help.github.com/">GitHub Help</a></dd>
        <dd><a href="http://developer.github.com/">Developer API</a></dd>
        <dd><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></dd>
        <dd><a href="http://pages.github.com/">GitHub Pages</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>More</dt>
        <dd><a href="http://training.github.com/">Training</a></dd>
        <dd><a href="https://github.com/edu">Students &amp; teachers</a></dd>
        <dd><a href="http://shop.github.com">The Shop</a></dd>
        <dd><a href="http://octodex.github.com/">The Octodex</a></dd>
      </dl>

      <hr class="footer-divider">


    <p class="right">&copy; 2012 <span title="0.22090s from fe14.rs.github.com">GitHub</span> Inc. All rights reserved.</p>
    <a class="left" href="https://github.com/">
      <span class="mega-icon mega-icon-invertocat"></span>
    </a>
    <ul id="legal">
        <li><a href="https://github.com/site/terms">Terms of Service</a></li>
        <li><a href="https://github.com/site/privacy">Privacy</a></li>
        <li><a href="https://github.com/security">Security</a></li>
    </ul>

  </div><!-- /.container -->

</div><!-- /.#footer -->


    

<div id="keyboard_shortcuts_pane" class="instapaper_ignore readability-extra" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus command bar</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style='display:none'>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Expand URL to its canonical form</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last js-hidden-pane" style='display:none'>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
        <dd>Submit comment</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> shift p</dt>
        <dd>Preview comment</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> shift p</dt>
          <dd>Preview comment</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Issues Dashboard</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div class="js-hidden-pane" >
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first js-hidden-pane" >
        <h3>Source Code Browsing</h3>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>w</dt>
          <dd>Switch branch/tag</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Expand URL to its canonical form</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first">
        <h3>Browsing Commits</h3>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>escape</dt>
          <dd>Close form</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>p</dt>
          <dd>Parent commit</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o</dt>
          <dd>Other parent commit</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>
    <h3>Notifications</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open notification</dd>
        </dl>
      </div><!-- /.column.first -->

      <div class="column second">
        <dl class="keyboard-mappings">
          <dt>e <em>or</em> shift i <em>or</em> y</dt>
          <dd>Mark as read</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift m</dt>
          <dd>Mute thread</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

</div>

    <div id="markdown-help" class="instapaper_ignore readability-extra">
  <h2>Markdown Cheat Sheet</h2>

  <div class="cheatsheet-content">

  <div class="mod">
    <div class="col">
      <h3>Format Text</h3>
      <p>Headers</p>
      <pre>
# This is an &lt;h1&gt; tag
## This is an &lt;h2&gt; tag
###### This is an &lt;h6&gt; tag</pre>
     <p>Text styles</p>
     <pre>
*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__

*You **can** combine them*
</pre>
    </div>
    <div class="col">
      <h3>Lists</h3>
      <p>Unordered</p>
      <pre>
* Item 1
* Item 2
  * Item 2a
  * Item 2b</pre>
     <p>Ordered</p>
     <pre>
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b</pre>
    </div>
    <div class="col">
      <h3>Miscellaneous</h3>
      <p>Images</p>
      <pre>
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
</pre>
     <p>Links</p>
     <pre>
http://github.com - automatic!
[GitHub](http://github.com)</pre>
<p>Blockquotes</p>
     <pre>
As Kanye West said:

> We're living the future so
> the present is our past.
</pre>
    </div>
  </div>
  <div class="rule"></div>

  <h3>Code Examples in Markdown</h3>
  <div class="col">
      <p>Syntax highlighting with <a href="http://github.github.com/github-flavored-markdown/" title="GitHub Flavored Markdown" target="_blank">GFM</a></p>
      <pre>
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```</pre>
    </div>
    <div class="col">
      <p>Or, indent your code 4 spaces</p>
      <pre>
Here is a Python code example
without syntax highlighting:

    def foo:
      if not bar:
        return true</pre>
    </div>
    <div class="col">
      <p>Inline code for comments</p>
      <pre>
I think you should use an
`&lt;addr&gt;` element here instead.</pre>
    </div>
  </div>

  </div>
</div>


    <div id="ajax-error-message" class="flash flash-error">
      <span class="mini-icon mini-icon-exclamation"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="mini-icon mini-icon-remove-close ajax-error-dismiss"></a>
    </div>

    
    
    <span id='server_response_time' data-time='0.22209' data-host='fe14'></span>
    
  </body>
</html>

