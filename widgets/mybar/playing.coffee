command: "osascript $HOME/mac-dotfiles/scripts/gettitle.scpt| cut -c -50"

refreshFrequency: '1s'

render: (output) -> """

<div class='left'>
<i class="fas fa-music" id="l"></i>
<p class='l'>#{output}</p>
</div>
"""
