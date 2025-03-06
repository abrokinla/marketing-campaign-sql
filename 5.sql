SELECT ((SUM(clicks)::NUMERIC)/SUM(impressions) * 100.0) as overallctr
FROM campaigndata;