command: "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'"

refreshFrequency: 100000

render: (output) -> """
<div class='bg'>
			<div class='wifi block'><p class='side'>wifi: #{output}</p></div>
</div>
"""