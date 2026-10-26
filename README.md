# Customer Shopping Behavior Analysis

## Project Overview
This project analyzes customer shopping behavior using Python, PostgreSQL, and Power BI. It explores purchasing patterns, customer segments, product categories, discounts, subscriptions, and customer ratings.

## Tools & Technologies
- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **SQL:** PostgreSQL and pgAdmin
- **Visualization:** Power BI
- **Notebook:** Jupyter Notebook / Google Colab

## Project Workflow
1. Cleaned and prepared the customer shopping dataset using Python.
2. Performed exploratory data analysis (EDA) and created visualizations.
3. Imported the cleaned data into PostgreSQL.
4. Wrote SQL queries to analyze customer purchasing patterns.
5. Built an interactive Power BI dashboard with customer insights and slicers.

## Dataset Summary
- **Records:** 3,900
- **Fields:** Customer demographics, purchased items, categories, purchase amounts, ratings, shipping, payment methods, subscriptions, and purchase frequency.
- **Data preparation:** Missing review ratings were filled using category-specific median values. Additional age-group, purchase-frequency, and customer-segment columns were created.

## Key Findings
- Clothing represented approximately 44.7% of the total recorded purchase amount.
- Accessories represented approximately 31.8%.
- The average recorded purchase amount was approximately $59.76.
- The average customer review rating was approximately 3.75 out of 5.
- Loyal customers made up most of the dataset under the project's rule-based customer segmentation.

## Project Structure
- `01_Python_EDA/` — Python notebook and EDA outputs
- `02_SQL_Analysis/` — SQL analysis script
- `03_PowerBI_Dashboard/` — Power BI dashboard
- `04_Datasets/` — Dataset files
- `05_Screenshots/` — Dashboard and analysis screenshots

## Important Note
This dataset contains 3,900 customer purchase records, with one record per customer. Purchase totals represent the recorded amounts in this dataset and should not be interpreted as verified business revenue or lifetime customer spend. Customer segments are defined using previous purchase counts.

## Author
**Hassan Khan**

GitHub: [Hassan-13-2006](https://github.com/Hassan-13-2006)
