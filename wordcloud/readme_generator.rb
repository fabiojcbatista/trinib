# require_relative "./cloud_types"

class ReadmeGenerator
  WORD_CLOUD_URL = 'https://raw.githubusercontent.com/trinib/test/main/wordcloud/wordcloud.png'
  ADDWORD = 'add'
  SHUFFLECLOUD = 'shuffle'
  INITIAL_COUNT = 0
  USER = "trinib"

  def initialize(octokit:)
    @octokit = octokit
  end

  def generate
    participants = Hash.new(0)
    current_contributors = Hash.new(0)
    current_words_added = INITIAL_COUNT
    total_clouds = CloudTypes::CLOUDLABELS.length
    total_words_added = INITIAL_COUNT * total_clouds

    octokit.issues.each do |issue|
      participants[issue.user.login] += 1
      if issue.title.split('|')[1] != SHUFFLECLOUD && issue.labels.any? { |label| CloudTypes::CLOUDLABELS.include?(label.name) }
        total_words_added += 1
        if issue.labels.any? { |label| label.name == CloudTypes::CLOUDLABELS.last }
          current_words_added += 1
          current_contributors[issue.user.login] += 1
        end
      end
    end

    markdown = <<~HTML
<!--👋HELLO EVERYBODY / 🌐WEBSITE: https://github.com/denvercoder1/readme-typing-svg -->
<p align="center">
<img src="https://readme-typing-svg.herokuapp.com?font=Architects+Daughter&color=%2379A500&size=40&duration=3000&center=true&lines=Hello+Everybody">
<!--🖼️GUMP-->
<p align="center">
<img src="https://media.giphy.com/media/QLKSt3wQqlj7a/giphy.gif">
<!--📏LINE-->
<img src="https://i.imgur.com/dBaSKWF.gif" height="20" width="1000">
<!--🖼️ILOVEOPENSOURCE-->
<img src="https://i.imgur.com/AZa5yxa.png" height="120" width="600">
<!--🎵SPOTIFY / 🌐WEBSITE: https://github.com/kittinan/spotify-github-profile -->
<p align="center">
<img src="https://raw.githubusercontent.com/trinib/spotify-github-profile/master/img/default.svg" height="130" width="300">
<!--🦜PARROTSEMOJI / 🌐WEBSITE: https://github.com/seanprashad/slackmoji/ -->
<p align="center">
<img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/parrots/parrot-trinidadandtobago.gif" height="50" width="50">
<img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/parrots/parrot-trinidadandtobago.gif" height="50" width="50">
<img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/parrots/parrot-trinidadandtobago.gif" height="50" width="50">
<img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/parrots/parrot-trinidadandtobago.gif" height="50" width="50">
<img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/parrots/parrot-trinidadandtobago.gif" height="50" width="50">
<!--🖼️SVG BANNER / 🌐WEBSITE: https://github.com/Akshay090/svg-banners -->
<p align="center">
<img src="https://raw.githubusercontent.com/trinib/trinib/main/.images/banner.svg"  width="600">
<!--🔳TERMINAL / 🌐WEBSITES: https://github.com/asciinema/asciinema & https://github.com/dstein64/gifcast -->
<p align="center">
<img src="https://raw.githubusercontent.com/trinib/trinib/main/.images/terminal.gif" width="400" height="400">
<!--📏LINE-->
<p align="center">
<img src="https://i.imgur.com/dBaSKWF.gif" height="20" width="1000">
<!--📰RSS / TAKE IMAGE FROM https://github.com/trinib/trinib/blob/main/.images/marquee.svg TO YOUR REPO AND EDIT IT-->
<p align="center">
<img src="https://raw.githubusercontent.com/trinib/trinib/main/.images/marquee.svg">
<p align="center">
<img src="https://capsule-render.vercel.app/api?type=shark&height=30&section=header&reversal=false&color=0:b579da,100:79da7f">
<!--🤖ASCIIART / 🌐WEBSITES: https://asciiart.website/ & https://github.com/github/markup/issues/1440#issuecomment-803889380 -->
<h4 align="center">

```diff
+@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @+
@@       o o                                           @@
@@       | |                                           @@
@@      _L_L_                                          @@
@@   ❮\\/__-__\\/❯ Programming isn't about what you know @@
@@   ❮(|~o.o~|)❯  It's about what you can figure out   @@
@@   ❮/ \\`-'/ \\❯                                       @@
@@     _/`U'\\_                                         @@
@@    ( .   . )     .----------------------------.     @@
@@   / /     \\ \\    | while( ! (succed=try() ) ) |     @@
@@   \\ |  ,  | /    '----------------------------'     @@
@@    \\|=====|/                                        @@
@@     |_.^._|                                         @@
@@     | |"| |                                         @@
@@     ( ) ( )   Testing leads to failure              @@
@@     |_| |_|   and failure leads to understanding    @@
@@ _.-' _j L_ '-._                                     @@
@@(___.'     '.___)                                    @@
+@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @+

```
</h4>
<!--🎨CAPSULE / 🌐WEBSITES: https://github.com/kyechan99/capsule-render -->
<p align="center">
<img src="https://capsule-render.vercel.app/api?type=shark&height=30&section=footer&reversal=false&color=0:b579da,100:79da7f">
<!--💬🃏FUNFACT / 🌐https://github.com/siddharth2016/quote-readme#update-your-readme -->
<p align="center">
<b>FUN FACT🤔 :</b>
<!--STARTS_HERE_QUOTE_README-->
<i>❝4004 was the name given to the first microprocessor by Intel.❞</i>
<!--ENDS_HERE_QUOTE_README-->
<!--📰RSS / TAKE IMAGE FROM https://github.com/trinib/trinib/blob/main/.images/marquee.svg TO YOUR REPO AND EDIT IT-->
<p align="center">
<img src="https://raw.githubusercontent.com/trinib/trinib/main/.images/marquee2.svg">
<!--📏LINE-->
<img src="https://i.imgur.com/dBaSKWF.gif" height="20" width="1000">
<!--📊💬STATTITLE / 🌐WEBSITE: https://textanim.com/ -->
<p align="center">
<img src="https://i.imgur.com/YCw47Dm.gif">
<!--🖼️OCTOCAT-->
<p align="center">
<img src="https://media.giphy.com/media/IP7sarl7C5lSFCw9rG/giphy.gif" width="100px">
<!--📊STATSGRAPH / 🌐WEBSITE: https://github.com/anuraghazra/github-readme-stats -->
<p align="center">
<img src="https://github-readme-stats.vercel.app/api?username=trinib&show_icons=true&theme=merko"><img src="https://github-readme-streak-stats.herokuapp.com?user=trinib&theme=merko&date_format=M%20j%5B%2C%20Y%5D">
<!--📙LANGUAGES / 🌐WEBSITE: https://github.com/anuraghazra/github-readme-stats -->
<p align="center">
<img src="https://github-readme-stats.vercel.app/api/top-langs/?username=trinib&layout=compact&theme=merko">
<!--📛BADGES / 🌐WEBSITE: https://github.com/DenverCoder1/custom-icon-badges -->
<p align="center">
  <a href="https://github.com/trinib?tab=repositories&sort=stargazers">
    <img alt="total stars" title="Total stars on GitHub" src="https://custom-icon-badges.herokuapp.com/badge/dynamic/json?logo=star&color=55960c&labelColor=488207&label=Stars&style=for-the-badge&query=%24.stars&url=https://api.github-star-counter.workers.dev/user/trinib"/></a><a href="https://github.com/trinib?tab=followers"><a href="https://github.com/trinib?tab=followers">
    <img alt="followers" title="Follow me on Github" src="https://custom-icon-badges.herokuapp.com/github/followers/trinib?color=23960c&labelColor=188207&style=for-the-badge&logo=person-add&label=Followers&logoColor=white"/></a>
<!--👀VIEWS / 🌐WEBSITE: https://github.com/antonkomarev/github-profile-views-counter -->
<p align="center">
<img src="https://komarev.com/ghpvc/?username=trinib&color=0E9C47&style=for-the-badge">
<!--📈ACTIVITYGRAPH / 🌐WEBSITE: https://github.com/Ashutosh00710/github-readme-activity-graph#customization -->
<p align="center">
<img src="https://camo.githubusercontent.com/5870d68f9990d2f2950dc7054fb673a3d9ca12f633e0e68be1f6c888b2b9a5ac/68747470733a2f2f61637469766974792d67726170682e6865726f6b756170702e636f6d2f67726170683f757365726e616d653d7472696e6962267468656d653d72656163742d6461726b26686964655f626f726465723d7472756526636f6c6f723d303064363638266c696e653d30306436363826706f696e743d386230303765" width="100%">
<!--🐍💬SNAKETITLE / 🌐WEBSITE: https://textanim.com/ -->
<p align="center">
<img src="https://i.imgur.com/x1KbuCq.gif" width="500">
<!--🐍📈SNAKEGRAPH / 🌐WEBSITE: https://github.com/Platane/snk -->
<img src="https://raw.githubusercontent.com/trinib/trinib/output/github-contribution-grid-snake.svg" width="100%">
<!--📏LINE-->
<img src="https://i.imgur.com/dBaSKWF.gif" height="20" width="1000"> 
<!--🤣JOYEMOJI / 🌐WEBSITE: https://github.com/seanprashad/slackmoji/ -->
<p align="center">
<img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-joy-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-joy-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-joy-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-joy-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-joy-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-joy-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-joy-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-joy-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-joy-gif.gif" width="30">
<!--😂💬JOKETITLE / 🌐WEBSITE: https://textanim.com/ -->
<p align="center">
<img src="https://i.imgur.com/KwHw09D.gif" height="30" width="150">
<!--😂🃏JOKECARD / 🌐WEBSITE: https://github.com/ABSphreak/readme-jokes -->
<p align="center">
<img src="https://camo.githubusercontent.com/727b46e1d3fa1dc9460d1f7a8c4f4fb8a5523029a3389abf818bc1f95430b4ac/68747470733a2f2f726561646d652d6a6f6b65732e76657263656c2e6170702f617069" alt="Jokes Card" width="400">
<!--🍷WINEEMOJI / 🌐WEBSITE: https://github.com/seanprashad/slackmoji/ -->
<p align="center">
<img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-wine-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-wine-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-wine-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-wine-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-wine-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-wine-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-wine-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-wine-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/blob/blob-wine-gif.gif" width="30">
<!--💬QUOTESTITLE / 🌐WEBSITE: https://textanim.com/ -->
<p align="center">
<img src="https://i.imgur.com/OFloXS3.gif" height="30" width="150">
<!--💬🃏QUOTESCARD / 🌐WEBSITE: https://github.com/PiyushSuthar/github-readme-quotes#Demo & https://github.com/shravan20/github-readme-quotes -->
<p align="center">
<img src="https://quotes-github-readme.vercel.app/api?type=vertical&theme=merko">
<p align="center">
<img src="https://camo.githubusercontent.com/5542dd2bc71b890a47c925a76eaddb8fd8b4d36d6e594b40e8558ab5f24f85d8/68747470733a2f2f6769746875622d726561646d652d71756f7465732e6865726f6b756170702e636f6d2f71756f74653f7468656d653d6d65726b6f26616e696d6174696f6e3d67726f775f6f75745f696e266c61796f75743d636875726368696c6c26666f6e743d64656661756c74">
<!--😻CATEMOJI / 🌐WEBSITE: https://github.com/seanprashad/slackmoji/ -->
<p align="center">
<img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/llamas/llama-blood-tears-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/llamas/llama-blood-tears-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/llamas/llama-blood-tears-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/llamas/llama-blood-tears-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/llamas/llama-blood-tears-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/llamas/llama-blood-tears-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/llamas/llama-blood-tears-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/llamas/llama-blood-tears-gif.gif" width="30"><img src="https://github.com/seanprashad/slackmoji/blob/master/emoji/llamas/llama-blood-tears-gif.gif" width="30">
<!--💬🃏MEMESTITLE / 🌐WEBSITE: https://textanim.com/ -->
<p align="center">
<img src="https://i.imgur.com/vKOQi1L.gif" height="30" width="150">
<!--🃏MEMEPHOTOS / 🌐https://github.com/techytushar/random-memer -->
<p align="center">
<img src="https://camo.githubusercontent.com/f45e5fad7f34a6c4e4d9b12230b5a59eacf798bad8022b6603a5fb08f7a84883/68747470733a2f2f7472696e69626d656d652e6865726f6b756170702e636f6d2f" width="260px"/>
<!--🔄REFRESHPAGE / 🌐WEBSITE: https://textanim.com/ -->
<p align="center"><a href="https://github.com/trinib/trinib"><img src="https://i.imgur.com/mGhPUXI.gif" width="200"></a>
<!--📏LINE-->
<img src="https://i.imgur.com/dBaSKWF.gif" height="20" width="1000">
<!--💬FUNTEXT -->
<p align="center">
<img src="https://i.imgur.com/jdd2GPv.gif" height="37" width="250">
<!--♟️CHESS / 🌐WEBSITE: https://github.com/marcizhu/readme-chess --> 
 <h4 align="center">
<table>
  <tr>
  </tr>
  <tr>
    <td><h5 align="center"><details>
  <summary><h2><img src="https://media.giphy.com/media/9qCnMFHeiUVdVaTihl/giphy.gif" width="20px">&nbsp;Chess Tournament&nbsp;<img src="https://media.giphy.com/media/9qCnMFHeiUVdVaTihl/giphy.gif" width="20px"></h2></summary><p>

<h4 align="left">

ANYONE can take a turn on the board  
<i>Make your move !!. It's <!-- BEGIN TURN -->black(solid)<!-- END TURN --> to play(instructions beneath)</i>

<!-- BEGIN CHESS BOARD -->
|   | A | B | C | D | E | F | G | H |   |
|---|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| **8** | <img src="img/black/rook.png" width=50px> | <img src="img/black/knight.png" width=50px> | <img src="img/black/bishop.png" width=50px> | <img src="img/black/queen.png" width=50px> | <img src="img/black/king.png" width=50px> | <img src="img/black/bishop.png" width=50px> | <img src="img/black/knight.png" width=50px> | <img src="img/black/rook.png" width=50px> | **8** |
| **7** | <img src="img/black/pawn.png" width=50px> | <img src="img/black/pawn.png" width=50px> | <img src="img/black/pawn.png" width=50px> | <img src="img/black/pawn.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/black/pawn.png" width=50px> | <img src="img/black/pawn.png" width=50px> | <img src="img/black/pawn.png" width=50px> | **7** |
| **6** | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | **6** |
| **5** | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/white/pawn.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | **5** |
| **4** | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | **4** |
| **3** | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/white/pawn.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/white/knight.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | **3** |
| **2** | <img src="img/white/pawn.png" width=50px> | <img src="img/white/pawn.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/white/pawn.png" width=50px> | <img src="img/white/pawn.png" width=50px> | <img src="img/white/pawn.png" width=50px> | <img src="img/white/pawn.png" width=50px> | **2** |
| **1** | <img src="img/white/rook.png" width=50px> | <img src="img/white/knight.png" width=50px> | <img src="img/white/bishop.png" width=50px> | <img src="img/white/queen.png" width=50px> | <img src="img/white/king.png" width=50px> | <img src="img/white/bishop.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/white/rook.png" width=50px> | **1** |
|   | **A** | **B** | **C** | **D** | **E** | **F** | **G** | **H** |   |
<!-- END CHESS BOARD -->

To move a piece to a postion
 
**_Choose one from the following table_** :
<!-- BEGIN MOVES LIST -->
|  FROM  | TO (Just click a link!) |
| :----: | :---------------------- |
| **A7** | [A5](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+A7+to+A5), [A6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+A7+to+A6) |
| **B7** | [B5](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+B7+to+B5), [B6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+B7+to+B6) |
| **B8** | [A6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+B8+to+A6), [C6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+B8+to+C6) |
| **C7** | [C5](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+C7+to+C5), [C6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+C7+to+C6) |
| **D7** | [D5](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+D7+to+D5), [D6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+D7+to+D6) |
| **D8** | [E7](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+D8+to+E7), [F6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+D8+to+F6), [G5](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+D8+to+G5), [H4](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+D8+to+H4) |
| **E8** | [E7](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+E8+to+E7) |
| **F7** | [F5](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+F7+to+F5), [F6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+F7+to+F6) |
| **F8** | [A3](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+F8+to+A3), [B4](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+F8+to+B4), [C5](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+F8+to+C5), [D6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+F8+to+D6), [E7](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+F8+to+E7) |
| **G7** | [G5](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+G7+to+G5), [G6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+G7+to+G6) |
| **G8** | [E7](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+G8+to+E7), [F6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+G8+to+F6), [H6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+G8+to+H6) |
| **H7** | [H5](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+H7+to+H5), [H6](https://github.com/trinib/trinib/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Chess%3A+Move+H7+to+H6) |
<!-- END MOVES LIST -->

Having fun? Ask a friend to play next move to get the next turn !

<details>
  <summary>How it works</summary>
When you click on a link it will submit a new issue with the desired move, create the issue and a GitHub action is triggered, which in turn runs a small python script that performs the specified movement, updates this README file and commits the changes.
</details>


<details>
  <summary>Last 5 moves in this game</summary>
<!-- BEGIN LAST MOVES -->

| Move | Author |
| :--: | :----- |
| `D4` to `E5` | [ @trinib](https://github.com/trinib) |
| `C6` to `B8` | [ @Sabyasachi-Seal](https://github.com/Sabyasachi-Seal) |
| `C2` to `C3` | [ @trinib](https://github.com/trinib) |
| `E7` to `E5` | [ @Sabyasachi-Seal](https://github.com/Sabyasachi-Seal) |
| `G1` to `F3` | [ @trinib](https://github.com/trinib) |

<!-- END LAST MOVES -->
</details>

<details>
  <summary>Top 10 most moves across all games</summary>
<!-- BEGIN TOP MOVES -->

| Total moves |  User  |
| :---------: | :----- |
| 4 | [@trinib](https://github.com/trinib) |
| 3 | [@Sabyasachi-Seal](https://github.com/Sabyasachi-Seal) |

<!-- END TOP MOVES -->
</details>
</details><h5 align="center">
  </tr>
 </table>
      
<!--CONNECTDOT🔴🟡 / 🌐WEBSITE: https://github.com/JessicaLim8/JessicaLim8 --> 
 <h4 align="center">
<table>
  <tr>
  </tr>
  <tr>
    <td><h5 align="center"><details>
  <summary><h2>&nbsp;&nbsp;&nbsp;<img src="https://media.giphy.com/media/L3LNfB3IXIUmySN67Z/giphy.gif" width="20px">&nbsp;Connect Dot&nbsp;<img src="https://media.giphy.com/media/Y0slbp1Hr4C8lUA5UG/giphy.gif" width="20px">&nbsp;&nbsp;&nbsp;</h2></summary><p>

<h4 align="left">

Here you can play Connect4. Just click a number under the grid to move, where to put the next a <!-- BEGIN TURN -->red<!-- END TURN --> piece.

<!-- BEGIN CONNECT4 BOARD -->
|   | 1 | 2 | 3 | 4 | 5 | 6 | 7 |   |
|---|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|---|<img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | |---|
|---|<img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | |---|
|---|<img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | |---|
|---|<img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | |---|
|---|<img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | |---|
|---|<img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | <img src="img/blank.png" width=50px> | |---|
|   | [1](https://github.com/trinib/test2/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Connect4%3A+Put+1) | [2](https://github.com/trinib/test2/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Connect4%3A+Put+2) | [3](https://github.com/trinib/test2/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Connect4%3A+Put+3) | [4](https://github.com/trinib/test2/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Connect4%3A+Put+4) | [5](https://github.com/trinib/test2/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Connect4%3A+Put+5) | [6](https://github.com/trinib/test2/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Connect4%3A+Put+6) | [7](https://github.com/trinib/test2/issues/new?body=Please+do+not+change+the+title.+Just+click+%22Submit+new+issue%22.+You+don%27t+need+to+do+anything+else+%3AD&title=Connect4%3A+Put+7) |   |
<!-- END CONNECT4 BOARD -->
<!-- BEGIN MOVES LIST2 -->
<!-- END MOVES LIST2 -->

<details>
  <summary>Last 5 moves in this game</summary>
<!-- BEGIN LAST MOVES2 -->

| Move | Author |
| :--: | :----- |
| `Start game` |  [ @trinib](https://github.com/trinib) | |

<!-- END LAST MOVES2 -->
</details>

<details>
  <summary>Top 10 most moves across all games</summary>
<!-- BEGIN TOP MOVES2 -->

| Total moves |  User  |
| :---------: | :----- |
| 9 |  [@trinib](https://github.com/trinib) | |

<!-- END TOP MOVES2 -->
</details>
</details>
</details><h5 align="center">
  </tr>
 </table>
      
#
<!--✏️WORDBOARD / 🌐WEBSITE: https://github.com/JessicaLim8/JessicaLim8 --> 
<h2 align="center">
Join the Word Cloud Board :cloud: :pencil2:

### :thought_balloon: [Add your name](https://github.com/trinib/test/issues/new?template=addword.md&title=wordcloud%7Cadd%7C%3CINSERT-WORD%3E) to see the word cloud update in real time :rocket:

:star2: Don't like the arrangement? [Regenerate it](https://github.com/trinib/test/issues/new?template=shufflecloud.md&title=wordcloud%7Cshuffle) :game_die:

<div align="center">

## #{CloudTypes::CLOUDPROMPTS.last}

![Word Cloud Words Badge](https://img.shields.io/badge/Words%20in%20this%20Cloud-#{current_words_added}-informational?labelColor=003995)
![Word Cloud Contributors Badge](https://img.shields.io/badge/Cloud%20Contributors-#{current_contributors.size}-blueviolet?labelColor=25004e)

<img src="#{WORD_CLOUD_URL}" alt="WordCloud" width="100%">
</div>
<!--📏LINE-->
<img src="https://i.imgur.com/dBaSKWF.gif" height="20" width="1000">
<p align="center">
<!--🐱CAT-->
<p align="center">
<img src="https://media.giphy.com/media/WUlplcMpOCEmTGBtBW/giphy.gif" width="100">
<!--🤔INTERESTTITLE-->
<p align="center">
<img src="https://i.imgur.com/ozEwbHs.gif">
<!--🖼️🖼️INTERSTLOGOS-->
<p align="center">
<img src="https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg" width="60">
<img src="https://www.vectorlogo.zone/logos/python/python-icon.svg" width="60">
<img src="https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg" width="60">
<img src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg" width="60">
<img src="https://www.vectorlogo.zone/logos/adobe_illustrator/adobe_illustrator-icon.svg" width="60">
<img src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/visual-studio-code/visual-studio-code.png" width="60">
<img src="https://www.vectorlogo.zone/logos/linux/linux-icon.svg" width="60">
<img src="https://www.vectorlogo.zone/logos/android/android-icon.svg" width="60">
<img src="https://www.vectorlogo.zone/logos/microsoft/microsoft-icon.svg" width="60">
<img src="https://www.vectorlogo.zone/logos/github/github-icon.svg" width="60">

</h4>
<!--🏆TROPHY / 🌐WEBSITE: https://github.com/ryo-ma/github-profile-trophy -->
<p align="center">
<img src="https://github-profile-trophy.vercel.app/?username=trinib&theme=tokyonight&no-frame=true&row=1&&margin-w=30&no-bg=true">
<!--📉METRICS / 🌐WEBSITE: https://github.com/lowlighter/metrics -->
<h4 align="right">
<details><summary><b>𝓟&nbsp;𝓡&nbsp;𝓞&nbsp;𝓕&nbsp;𝓘&nbsp;𝓛&nbsp;𝓔&nbsp;&nbsp; 𝓜&nbsp;𝓔&nbsp;𝓣&nbsp;𝓡&nbsp;𝓘&nbsp;𝓒&nbsp;𝓢<img src="https://media.giphy.com/media/mBYkXvLxkHZFmqBHIC/giphy.gif" width=50px height=40px></b></summary>
<p>
<p align="center">
<img src="https://raw.githubusercontent.com/trinib/trinib/main/github-metrics.svg">
</p>
</details>
<!--📏LINE-->
<img src="https://i.imgur.com/dBaSKWF.gif" height="20" width="1000">
 
<!--🖼️⭐🔱STARRED/FORK-->
<h4 align="right">
 
<table>
  <tr>
   <img src="https://c.tenor.com/SOVMSXmWB1kAAAAi/tony-star-jumping.gif" width="70">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <img src="https://c.tenor.com/XSbD902n1fwAAAAi/rennen-fast.gif" width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </tr>
  <tr>
    <td><p align="center"><a href="https://github.com/trinib?tab=stars"><b>MY STARRED REPOS <br>AND TOPICS</b></a>
    <td><p align="center"><a href="https://github.com/trinib/trinib/edit/main/README.md"><b>FORK PROFILE WITH <br>EASY EDITING</b></a>
  </tr>
 </table>
<!--📏LINE-->
<p align="center">
<img src="https://i.imgur.com/dBaSKWF.gif" height="20" width="1000">
<!--🎨THEMEMODE / 🌐WEBSITE: https://fancytext.blogspot.com/ -->
<h4 align="left">

</h4>
 
╔═&nbsp;&nbsp;👀 𝕐&nbsp;𝕆&nbsp;𝕌&nbsp;ℝ&nbsp;&nbsp;𝕋&nbsp;ℍ&nbsp;𝔼&nbsp;𝕄&nbsp;𝔼&nbsp;&nbsp;𝕄&nbsp;𝕆&nbsp;𝔻&nbsp;𝔼 👀
<h4>
<h4 align="left">  
 
╚═════ &nbsp;𝐈𝐓'𝐒 [𝐃𝐀𝐑𝐊⚫](https://github.com/settings/appearance#gh-dark-mode-only)[𝐁𝐑𝐈𝐆𝐇𝐓⚪](https://github.com/settings/appearance#gh-light-mode-only) 𝐈𝐍 𝐇𝐄𝐑𝐄...
<h4>
<!--🪳ROACH&🕷️SPIDER--> 
<p align="left">
<img src="https://media.giphy.com/media/2fC8cduAc35UIAxHDE/giphy.gif" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://c.tenor.com/3dgbcMt6Kx4AAAAi/spider-insect.gif" width="40">
 
<!--🦶FOOTER--> 
<img src="https://raw.githubusercontent.com/trinib/trinib/main/.images/footer.svg" width="100%">
<!--⚽️ACTIVITY / 🌐WEBSITE: https://github.com/Readme-Workflows/recent-activity -->
<!--RECENT_ACTIVITY:start-->
<!--RECENT_ACTIVITY:end-->
<p align="right">
<!--RECENT_ACTIVITY:last_update-->
<i>Last refresh</i>: <b>Sunday, March 27th, 2022, 5:54:05 PM</b>
<!--RECENT_ACTIVITY:last_update_end-->
 
<!--
**trinib/trinib** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
   HTML
    # TODO: [![Github Badge](https://img.shields.io/badge/-@username-24292e?style=flat&logo=Github&logoColor=white&link=https://github.com/username)](https://github.com/username)

    current_contributors.each do |username, count|
    end

    markdown.concat()

  end

  private

  def format_username(name)
    name.gsub('-', '--')
  end

  def previous_cloud_url
    url_end = CloudTypes::CLOUDPROMPTS[-2].gsub(' ', '-').gsub(':', '').gsub('?', '').downcase
    "https://github.com/trinib/test/blob/main/previous_clouds/previous_clouds.md##{url_end}"
  end

  attr_reader :octokit
end