command: """pmset -g batt | awk '/InternalBattery-0/ {print substr($4,0,length($4)-1) ": " substr($3,0,length($3)-1)}'"""

refreshFrequency: 5000

render: (output) -> """
<div class='bg'>
	<div class='bat block'>
		<p class='side'>#{output}</p>
	</div>
</div>
'"""
