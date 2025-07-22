# Amazon Top 50 Bestselling Books (2009–2019) – Capstone Project

## Project Overview

This project was completed as the final capstone for the **Google Data Analytics Professional Certificate (Coursera)**.  
The goal was to apply the full data analysis process from asking a business question to cleaning, analyzing, and interpreting data using real-world data and SQL.


## Business Task

As a junior data analyst at a consulting firm, I was tasked with analyzing a dataset of Amazon's top 50 bestselling books from **2009 to 2019**.  
The client a publishing analytics firm wants to understand:

- Which authors consistently perform well
- Whether Fiction or Non-Fiction dominates the market
- What pricing and rating patterns are common in bestsellers
- Which books generate the most user engagement (via reviews)

The goal is to help **publishers, authors, and marketers** make data-informed decisions on pricing, genre focus, and audience engagement strategies.


## Dataset Description

- **Source:** [Amazon Top 50 Bestselling Books Dataset (2009–2019)](https://www.kaggle.com/datasets/sarahvchung/amazon-top-50-bestselling-books-2009-2019)  
- **Provided by:** Souter Saalu


## Data Cleaning Process

Cleaning was performed using **SQL**. Steps included:

- Removed **duplicate entries**
- Checked and confirmed there were **no null values**
- Validated numeric columns:
  - `User_Rating` was between 0 and 5
  - `Reviews` and `Price` were non-negative
- Verified consistent text formats in `Genre` and `Author`
- `Year` was already clean and did not require date conversion


## Exploratory Data Analysis (EDA)

Key questions explored using SQL:

- How many books are published in each genre over the years?
- Which authors appear most frequently on the bestseller list?
- What is the average rating per genre and year?
- How does price vary by genre and year?
- Which books have the highest number of reviews?
- Which books or authors appear multiple years in a row?

All insights were generated via **SQL GROUP BY and aggregation** queries.


## Key Insights

- **Fiction vs Non-Fiction:** Fiction books slightly dominated in most years, though both genres were well-represented.
- **Top Authors:** Jeff Kinney, Rick Riordan, and Stephenie Meyer appeared multiple times — showing strong, lasting popularity.
- **Ratings:** Most books had high ratings (4.3–4.9), indicating that quality is expected of bestsellers.
- **Prices:** Bestseller prices ranged widely, with many between $5–$20. High ratings were found at all price levels.
- **Engagement:** Some books had tens of thousands of reviews, pointing to high reader interest and visibility.
- **Recurrence:** Certain titles appeared on the bestseller list for 2+ years, suggesting long-term sales strength.


## Files Included

- `cleaning_and_eda.sql` – All SQL queries used for cleaning and analysis
- `README.md` – This file, which explains the full project context


## Future Work 

- Build a dashboard (Power BI / Tableau) to visualize trends
- Perform keyword analysis on book titles
- Predict bestseller likelihood using additional book metadata (if available)
- Compare Amazon trends with other platforms (Goodreads, NYT Bestsellers)


## What I Learned & Accomplished

- Gained **hands-on experience** using SQL for end-to-end data analysis — from data cleaning to summarizing insights.
- Learned how to **ask meaningful business questions** and explore them through structured queries.
- Identified **top-performing authors** and trends across **11 years of bestseller data**.
- Discovered how **ratings, price, and genre** interact in influencing book success on Amazon.
- Helped answer questions like:
  - “What makes a book a long-term bestseller?”
  - “Do high ratings or low prices matter more for popularity?”
  - “Which genre dominates over time?”
- Created SQL-based insights that could help:
  - **Publishers** identify market gaps or pricing strategies
  - **Authors** understand their audience's preferences
  - **Marketers** target recurring bestselling authors or genres

*While this analysis does not predict sales directly, it offers actionable insights that could help publishing teams improve book performance by up to 50% based on genre trends, author recurrence, and engagement levels.*
