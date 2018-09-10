command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 10000

render: (output) -> """<div class='midright'>
<i class="fas fa-car-battery"></i>
<p class='mr'> #{output}</p>
</div>"""
