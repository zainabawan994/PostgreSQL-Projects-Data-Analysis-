Select * From social_media_posts;

---Total Post for Each Platform
select platform, count(platform) from social_media_posts
group by platform;

--total post of each platform for week days
select day_of_week,platform,
count(platform) from social_media_posts
group by day_of_week , platform;

---total post by platform and by location

select location,platform,
count(platform) from social_media_posts
group by location, platform;


--- by language post of each categry by platform

select language,platform,
count(platform) from social_media_posts
group by language, platform;

---sentiment_label of the data
select sentiment_label,platform,
count(platform) from social_media_posts
group by platform,sentiment_label
order by platform desc;

---platfrom with toxicity_scores
Select
platform,
case
when toxicity_score<0.3 then 'low'
when toxicity_score<0.7 then 'medium'
else 'high'
end as toxicity_level,
count(*) as total_posts
from social_media_posts
group by platform,toxicity_level
order by platform,total_posts desc;


---emotion_type total post by each category
Select 
platform,emotion_type,
count(*) as total_posts
from social_media_posts
group by platform,emotion_type
order by platform,total_posts desc;

---share count by each platfrom shares_count
select platform,
sum(shares_count) as total_shared
from social_media_posts
group by platform
order by platform desc

--total comments_count
select platform,
sum(comments_count) as total_shared
from social_media_posts
group by platform
order by platform desc

---total impressions
select platform,
sum(impressions) as total_shared
from social_media_posts
group by platform
order by platform desc

--engagement_rate analysis
select
platform,
case
when round(engagement_rate,0) <7 then  'low'
when round(engagement_rate ,0)< 17 then 'medium'
else 'high'
end as engagement,
count (*) as total_posts
from social_media_posts
group by platform,engagement
order by platform ,total_posts desc;


---emotion_type for each platform
select emotion_type,platform,
count(emotion_type)
from social_media_posts
group by platform,emotion_type
order by platform desc


--- post by topic_category
select topic_category,platform,
count(topic_category)
from social_media_posts
group by platform,topic_category
order by platform desc




