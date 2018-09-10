command: "date +\"%a, %b %d\""

refreshFrequency: 100000

render: (output) ->
	"""<div class='center'>
	<p class='c'> #{output}</p>
	</div>"""
