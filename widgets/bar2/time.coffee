command: "date +\"%I:%M:%S\""

refreshFrequency: 1000

render: (output) ->"""
<div class='bg'>
	<div class='time block'>
		<p class='side'>time: #{output}</p>
	</div>
</div>
"""
