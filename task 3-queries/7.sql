WITH CampaignCTR AS (
    SELECT campaign_id, 
           company,
           ROUND(((NULLIF(clicks::NUMERIC, 0) /NULLIF(impressions,0)) * 100),2) AS ctr
    FROM campaigndata
)
SELECT campaign_id, company, ctr
FROM CampaignCTR
WHERE ctr > 5
ORDER BY ctr DESC;
