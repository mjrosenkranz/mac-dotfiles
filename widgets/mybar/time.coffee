command: "date +\"%I:%M:%S\""

refreshFrequency: 1000

render: (output) ->
	"""<div class='right'>
	<i class="fas fa-hourglass-half"></i>
	<p class='r'> #{output}</p>
	</div>"""
