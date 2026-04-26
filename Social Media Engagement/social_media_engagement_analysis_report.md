# 📊 Social Media Engagement Analysis (PostgreSQL)

## 📌 Project Overview

This project analyzes social media post data using PostgreSQL to understand engagement patterns across platforms, audience context, and content characteristics. The objective is to identify factors that influence engagement and help optimize social media strategy.

---

## 📂 Dataset Description

The dataset consists of multiple features grouped into the following categories:

### 🧑‍💻 Basic Information
- post_id
- timestamp
- day_of_week
- platform
- user_id

### 🌍 Context Information
- location
- language

### 📝 Content & Sentiment
- topic_category
- sentiment_label
- emotion_type
- toxicity_score

### 📊 Engagement Metrics
- likes_count
- shares_count
- comments_count
- impressions
- engagement_rate

---

## 🔍 Analysis Performed

### 📱 Platform-wise Analysis
- Total number of posts per platform
- Engagement comparison using average engagement rate
- Total reach using impressions

### 📅 Day-wise Posting Analysis
- Post distribution across days of the week
- Platform-wise posting trends
- Identification of best day + platform combination using average engagement

### 🌍 Location Analysis
- Total posts by platform and location
- Average engagement by location
- Identification of high-performing regions

### 🌐 Language Analysis
- Distribution of posts by language and platform
- Comparison of engagement across languages

### 😊 Sentiment Analysis
- Distribution of posts by sentiment_label
- Analysis of sentiment impact on engagement rate

### ⚠️ Toxicity Analysis
- Categorized toxicity_score into:
  - Low (< 0.3)
  - Medium (0.3 - 0.7)
  - High (> 0.7)
- Compared toxicity levels across platforms

### 💬 Emotion Analysis
- Distribution of posts by emotion_type
- Platform-wise emotional content analysis

### 🏷️ Topic Category Analysis
- Distribution of posts across different topic categories
- Platform-wise topic comparison

---

## 📊 Engagement Metrics Analysis

### 🔁 Shares, Comments, Impressions
- Total shares per platform
- Total comments per platform
- Total impressions (reach) per platform

### 📈 Engagement Rate Classification
Posts were categorized into:
- Low Engagement
- Medium Engagement
- High Engagement

Based on engagement_rate values and analyzed across platforms.

---

## 🚀 Advanced Analysis

### 📊 Average Engagement per Platform
- Calculated average engagement rate
- Compared platform performance

### 📅 Best Day + Platform Combination
- Identified optimal posting time based on engagement

### 🌍 Location-based Engagement
- Identified locations with highest engagement rates

### 😊 Sentiment Impact
- Compared engagement across sentiment categories

### 💡 Engagement Composition
- Average likes, shares, and comments per platform
- Insight: Comments show relatively lower interaction compared to likes and shares

### 🔥 Viral Posts Detection
- Identified posts with engagement rate above average
- Highlighted high-performing (semi-viral) posts

---

## 🧠 Key Insights

- Platforms differ significantly in engagement performance
- Best posting day varies by platform
- Certain locations have higher audience interaction
- Positive sentiment content tends to perform better
- Likes are the dominant interaction type, while comments are lower
- Toxicity levels vary across platforms and content types

---

## 📌 Conclusion

This analysis helps answer key business questions:

- When is the best time to post?
- Which platform performs best?
- Which audience (location/language) is most active?
- What type of content drives engagement?

The results can be used to design data-driven social media strategies.

---

## 🛠️ Tools Used

- PostgreSQL
- SQL (GROUP BY, CASE, Aggregations, Subqueries)

---

## 📎 Future Improvements

- Add time-based (hourly) analysis
- Perform hashtag-level analysis
- Build interactive dashboards (Power BI / Tableau)
- Apply predictive modeling for engagement forecasting

---

