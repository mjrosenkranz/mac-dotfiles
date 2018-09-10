refreshFrequency: '1s'

command: "osascript -e 'tell application \"Spotify\" to if player state is playing then name of current track & \" - \" & artist of current track'"

render: () -> return """
	<link rel="stylesheet" type="text/css" href="player/style.css" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
	<div class='window'>	
		<div class='cover'></div>
		<div class='controls'>
			<button class="btn" id="lb"><i class="fas fa-fast-backward" id="fb"></i></button>
			<button class="btn"><i class="fas fas fa-stop" id="st"></i></button>
			<button class="btn"><i class="fas fa-fast-forward" id="ff"></i></button>
		</div>
	</div>
"""

update: (output, domEl) ->
	div = $(domEl)
	
	cover = div.find('.cover')

	if !output
		cover.css('background-color', 'blue')
	else
		cover.css('background-color', 'purple')
