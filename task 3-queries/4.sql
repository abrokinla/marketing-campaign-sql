SELECT target_audience,
	AVG(engagement_score::NUMERIC) AS avgengagementscore
FROM campaigndata
GROUP BY target_audience
ORDER BY avgengagementscore DESC;