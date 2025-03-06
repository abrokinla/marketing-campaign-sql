SELECT campaign_id, company,
		(acquisition_cost::NUMERIC/NULLIF((conversion_rate * clicks), 0)) AS costperconversion
FROM campaigndata
ORDER BY costperconversion ASC
LIMIT 1;