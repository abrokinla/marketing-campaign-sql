SELECT location,
	SUM(impressions) AS totalImpressions
FROM campaigndata
GROUP BY location
ORDER BY totalImpressions DESC
LIMIT 3;