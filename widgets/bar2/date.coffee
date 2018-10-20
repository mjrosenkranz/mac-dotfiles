command: "date +\"%a, %b %d\""

refreshFrequency: 1000

render: (output) ->"""
<div class='bg'>
	<div class='date block'>
		<p class='side'>date: #{output}</p>
	</div>
</div>
"""