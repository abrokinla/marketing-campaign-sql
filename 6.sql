SELECT campaign_id, company,
		ROUND((acquisition_cost::NUMERIC/NULLIF((conversion_rate * clicks), 0)), 2) AS costperconversion
FROM campaigndata
ORDER BY costperconversion ASC
LIMIT 1;