command: "osascript -e 'tell application \"Spotify\" to if player state is playing then name of current track & \" - \" & artist of current track' | cut -c -50"

refreshFrequency: '1s'

render: (output) -> """

<div class='left'>
<i class="fas fa-music" id="l"></i>
<p class='l'>#{output}</p>
</div>
"""
