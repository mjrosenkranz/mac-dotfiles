command: "osascript -e 'tell application \"Spotify\" to if player state is playing then name of current track & \" - \" & artist of current track'"

refreshFrequency: '1s'

render: (output) -> """

<div class='bg'>
	<div class='music block'>
		<p class='side'>now playing:<br />#{output}</p>
	</div>
</div>
"""
