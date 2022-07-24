# Module 16 - Challenge
## Amazon Vine Analysis

## Overview of the analysis
The main objective of this project is to analyze a dataset which contains reviews for a specific category of products. Some of these reviews were provided by members of a program called the "Vine Program". The Vine program is a service that allows manufacturers and publishers to received reviews for their products. We are about to discover if the Vine reviews are biased when compared to reviews from users external to the Vine program. 

## Results
### The dataset
For this analysis, we have used the "Watches" dataset, which can be found here: https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Watches_v1_00.tsv.gz

### The numbers
After following the recommended steps for this analysis, we have the following figures:
- Number of reviews: 9631
- Number of five star reviews: 4347
- Number of paid (Vine) reviews: 47
- Number of unpaid (no Vine) reviews: 8362
- Five star paid (Vine) reviews: 15
- Five start unpaid (no Vine) reviews: 4332
- Percentage of paid reviews: 31.9148
- Percentage of unpaid reviews: 51.8057

### Analysis of the numbers
**How many Vine reviews and non-Vine reviews were there?**
We have a total of 47 Vine reviews. This is a small amount when compared to the 8,362 unpaid reviews. 

**How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?**
We have a total of 15 paid five-star reviews. Also, we have 4,332 unpaid five-star reviews. 

**What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?**
From the Vine reviews, almost 32% were five-star reviews. For the unpaid review, the proportion is higher, with almost 52% of five-star reviews. 

## Summary
    - The summary states whether or not there is bias, and the results support this statement (2 pt)
    - An additional analysis is recommended to support the statement (2 pt)

After analyzing the dataset, we realized there are only a few reviews that are paind under the "Watches" category. On the ther hand, we have plenty of unpaid reviews. If you ask me, these are the ones that are really valuable. 

Let's look at the percentage of five-star revies, Vine reviews. The percentaje is relatively small, with only 32%. Before starting this analysis, my guess would have been that percentage would be higher. Also, I was expecting to have a higher number of Vine reviews. After all, people is getting paid for providing their reviews. 

An interesting exercise would be to analyze the quality of the reviews, Vine Vs unpaid reviews. I would expect the Vine reviews to be more detailed, explaining different aspects of the product or service. For the unpaid reviews, those tend to be very passional. My guess is people would be providing a reviews either because the hate or love the product. Analyzing the overall sentiment of the reviews would allow us to clearly identify if there is any bian in the reviews. 
