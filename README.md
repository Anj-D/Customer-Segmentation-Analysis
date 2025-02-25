# Customer-Segmentation-Analysis
![Image](https://github.com/user-attachments/assets/5713fe4a-4714-4d95-8438-95cb72e81e1a)
# RFM-Analysis
RFM Analysis is used to understand and segment customers based on their buying behaviour. RFM stands for recency, frequency, and monetary value, which are three key metrics providing information about customer engagement, loyalty, and value to a business. It is used to determine quantitatively which customers are the best ones by examining how recently a customer has purchased (Recency), how often they purchase (Frequency), and how much the customer spends (Monetary).

<b>Recency(R):</b> Customers who purchased more recently are more likely to purchase again than the ones who purchased further in the past.<br/>
<b>Frequency(F):</b> Customers who have made more purchases in the past are more likely to respond than who have made fewer purchases.<br/>
<b>Monetary:</b> Customers who have spent more (in total for all purchases) in the past are more likely to respond than those who have spent less.

## Benefits of RFM Analysis

* Increased customer Retention
* Increased response rate
* Increased Conversion Rate
* Increased Revenue

## Table with key RFM Segments

| Segment | RFM | Description | Marketing |
|:--------|:---:|:------------|:---------:|
|<b>Best Customers</b>| 111 | Customers who bought most recently, most often and spend the most | No price incentives, Promote new products and loyalty programs |
|<b>Loyal Customers</b>| 11X | Customers who bought most recently | Offer exclusive deals or EARLY ACCESS, Use R and M to further segment |
|<b>Big Spenders</b>| XX1 | Customers who spend the most | Recommend premium products |
|<b>Almost Lost</b>| 311 | Haven't purchased for some time, but purchased frequently and spend the most | Retarget with Agressive price incentives |
|<b>Lost Customers</b>| 411 |Haven't purchased for some time, but purchased frequently and spend the most | Targeted campaigning, market their most bought products with agressive price incentives |
|<b>Lost Cheap Customers</b>| 444 | Last purchase long ago, purchased few and spend little | Minimize marketing spending on them |

## Interpreting the RFM  Analysis

Let us suppose we receive the below result

| Customer | Recency(R) | Frequency(F) | Monetary Value(M) | RFM Class |
|:---------|:----------:|:------------:|:-----------------:|:---------:|
|Jenny|4 days|58 orders|$2869|1-1-1|
|Billy Ross|50 days|1 order|$44|3-4-4|
|Nancy Perrie|47 days|2 orders|$156|3-2-1|

<b>Result:</b><br/>
1. <b>Jenny</b> belongs to the "<b>Best Customer</b>" segment --<br/>
She purchased recently (R=1), frequently buys (F=1), and spent the most (M=1).
2. <b>Billy Ross</b> is about to enter the "<b>Lost Cheap Customer</b>" segment --<br/>
He has not purchased in a while (R=3), bought few (F=4), and spent little (M=4).
3. <b>Nancy Perrie</b> is a type of "<b>Almost Lost Customer</b>" segment --<br/>
She has not made a purchase for some time (R=3), she bought somewhat frequently (F=2), but she is in the group who spent the most (M=1).

# MySQL code calculating rfm scores
![Image](https://github.com/user-attachments/assets/c19207f5-3fdb-4811-867a-aaa2089d6eae)

![Image](https://github.com/user-attachments/assets/70535253-721b-4909-afb3-eeb7ee78194c)
* Final segmentation based on aquired scores
![Image](https://github.com/user-attachments/assets/2ae237f5-3af5-4d42-ac62-e1b0ea51020d)
![Image](https://github.com/user-attachments/assets/8cc6b3c0-5541-4ace-b47e-6f66c470c4d5)
