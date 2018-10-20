command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 10000

render: (output) -> """
<div class='bg'>
	<div class='bat block'>
		<p class='side'>bat: #{output}</p>
	</div>
</div>
'"""
