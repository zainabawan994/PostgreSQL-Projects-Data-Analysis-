CREATE TABLE social_media_posts (
    post_id VARCHAR PRIMARY KEY,
    
    -- Basic Info
    timestamp TIMESTAMP,
    day_of_week VARCHAR(30),
    platform VARCHAR(60),
    user_id VARCHAR(60),
    
    -- Context Info
    location VARCHAR(100),
    language VARCHAR(50),
    
    -- Content Info
    text_content TEXT,
    hashtags TEXT,
    mentions TEXT,
    keywords TEXT,
    topic_category VARCHAR(150),
    
    -- Sentiment & Emotion
    sentiment_score NUMERIC(4,3),   -- e.g. -1.000 to 1.000
    sentiment_label VARCHAR(20),    -- positive / negative / neutral
    emotion_type VARCHAR(50),
    toxicity_score NUMERIC(4,3),
    
    -- Engagement Metrics
    likes_count INT,
    shares_count INT,
    comments_count INT,
    impressions INT,
    engagement_rate NUMERIC(6,4),
    
    -- Brand & Campaign
    brand_name VARCHAR(100),
    product_name VARCHAR(100),
    campaign_name VARCHAR(100),
    campaign_phase VARCHAR(50),
    
    -- User Behavior
    user_past_sentiment_avg NUMERIC(4,3),
    user_engagement_growth NUMERIC(6,3),
    buzz_change_rate NUMERIC(6,3)
);
Select * From social_media_posts;
