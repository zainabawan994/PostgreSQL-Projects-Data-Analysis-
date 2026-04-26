select * from social_media_posts;

--- Engagement per Platform

select
platform,
Round(avg(engagement_rate),3) as avg_engagement,
sum(impressions) as total_reach
from social_media_posts
group by platform
ORDER BY avg_engagement DESC;

---- Best Day + Platform Combo
select day_of_week,platform,
Round(avg(engagement_rate),3) as avg_engagement
from social_media_posts
group by day_of_week,platform
ORDER BY platform DESC;

--Location with Highest 

Select location,
Round(Avg(engagement_rate),3) as avg_engagement
From social_media_posts
Group By location,platform
ORDER BY avg_engagement DESC

--Sentiment Impact on Engagement
Select sentiment_label,
Round(Avg(engagement_rate),3) as avg_engagement
From social_media_posts
Group By sentiment_label
ORDER BY avg_engagement DESC 

----Engagement Composition  which type of interaction is auidence is giving
SELECT platform,
       ROUND(AVG(likes_count),2) AS avg_likes,
       ROUND(AVG(shares_count),2) AS avg_shares,
       ROUND(AVG(comments_count),2) AS avg_comments
FROM social_media_posts
GROUP BY platform;   ---- comment have low interaction

----Viral Posts Detection
SELECT post_id, platform, engagement_rate
FROM social_media_posts
WHERE engagement_rate > (
    SELECT AVG(engagement_rate) FROM social_media_posts
)
ORDER BY engagement_rate DESC;

