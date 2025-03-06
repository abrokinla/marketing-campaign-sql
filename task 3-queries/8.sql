WITH CHannelConversions AS (
	SELECT channel_used,
			SUM(conversion_rate * clicks) AS totalconversions
	FROM campaigndata
	GROUP BY channel_used
)
SELECT channel_used,
	totalconversions
FROM ChannelConversions
ORDER BY totalconversions DESC;