SELECT campaign_id, impressions AS totalImpressions
FROM campaigndata
GROUP BY campaign_id;