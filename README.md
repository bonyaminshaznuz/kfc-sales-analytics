# 🍗 KFC Sales Data Analytics Project

## 📊 Project Overview

This comprehensive data analytics project analyzes KFC's historical sales data across multiple countries from 2018 to 2024. The project demonstrates end-to-end data analysis capabilities including data cleaning, SQL querying, and interactive visualization using Power BI.

## 🎯 Objectives

- Analyze sales trends and patterns across different time periods
- Identify top-performing branches and countries
- Evaluate marketing ROI and customer acquisition costs
- Provide actionable insights for business decision-making
- Create interactive dashboards for stakeholder presentations

## 📁 Project Structure

```
Data Analytics Project/
│
├── KFC_Past_Sales_Dataset.csv      # Raw sales data (8000+ records)
├── Data_format.ipynb                # Python notebook for data cleaning
├── kfc_past_sales.sql               # SQL database schema
├── Kfc_Data_queries.sql             # 20 analytical SQL queries
├── Graph.pbix                       # Power BI dashboard file
├── README.md                        # Project documentation
├── PROJECT_REPORT.md                # Detailed analysis report
├── PRESENTATION.md                  # Executive presentation
└── QUESTIONS.md                     # Project questions & answers
```

## 📈 Dataset Description

### Data Scope
- **Time Period**: 2018 - 2024
- **Total Records**: 8,000+ transactions
- **Countries Covered**: USA, UK, Canada, Australia, India
- **Branches**: Multiple branches per country (e.g., KFC_US_01, KFC_UK_02)

### Data Fields
| Column | Description | Type |
|--------|-------------|------|
| Year | Transaction year (2018-2024) | Integer |
| Month | Transaction month | String |
| Country | Country of operation | String |
| Branch_ID | Unique branch identifier | String |
| Sales | Sales amount in local currency | Integer |
| Customers | Number of customers served | Integer |
| Marketing_Spend | Marketing expenditure | Integer |

## 🛠️ Technologies Used

- **Python 3.x** - Data cleaning and preprocessing
  - pandas - Data manipulation
  - Jupyter Notebook - Interactive development
- **SQL** - Data querying and analysis
  - MySQL/PostgreSQL compatible queries
- **Power BI** - Data visualization and dashboarding
- **Git** - Version control

## 🔍 Key Analyses Performed

### 1. Sales Performance Analysis
- Total sales by year, country, and branch
- Monthly and quarterly sales trends
- Year-over-year growth rates
- Seasonal patterns identification

### 2. Customer Analytics
- Total customers served across regions
- Average customers per month
- Customer distribution by country
- Revenue per customer analysis

### 3. Marketing Effectiveness
- Marketing ROI by country
- Cost per customer acquisition
- Marketing spend efficiency analysis

### 4. Trend Analysis
- 3-month moving averages
- Cumulative sales tracking
- Month-over-month changes
- Top and bottom performing periods

### 5. Branch Performance
- Branch ranking by sales
- Market share per country
- Comparative branch analysis

## 📊 SQL Queries Overview

The project includes 20 comprehensive SQL queries covering:

1. Total sales by year
2. Total sales by country
3. Total sales by branch
4. Monthly sales totals
5. Total customers served
6. Average customers per month
7. Country-wise customer distribution
8. Year-over-year growth rate
9. Month-over-month changes
10. Quarterly performance
11. Average transaction value
12. Revenue per customer per month
13. Marketing ROI by country
14. Cost per customer acquisition
15. Branch ranking by sales
16. Cumulative sales over time
17. 3-month moving average
18. Top 5 months (best performance)
19. Bottom 5 months (worst performance)
20. Market share per country per year

## 🚀 Getting Started

### Prerequisites
```bash
# Python packages
pip install pandas jupyter

# SQL Database (MySQL/PostgreSQL)
# Power BI Desktop (for viewing .pbix file)
```

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/bonyaminshaznuz/kfc-sales-analytics.git
cd kfc-sales-analytics
```

2. **Set up the database**
```bash
# Import the SQL schema
mysql -u username -p database_name < kfc_past_sales.sql
```

3. **Run data cleaning notebook**
```bash
jupyter notebook Data_format.ipynb
```

4. **Execute SQL queries**
```bash
# Run individual queries from Kfc_Data_queries.sql
mysql -u username -p database_name < Kfc_Data_queries.sql
```

5. **Open Power BI Dashboard**
- Open `Graph.pbix` in Power BI Desktop
- Refresh data connections if needed

## 📊 Key Insights

### Sales Performance
- **Peak Performance**: Identified top 5 performing months
- **Growth Trends**: Year-over-year growth analysis shows market expansion
- **Regional Leaders**: Country-wise sales comparison reveals market leaders

### Customer Behavior
- **Average Transaction Value**: Calculated across all transactions
- **Customer Trends**: Monthly customer flow patterns identified
- **Regional Preferences**: Country-specific customer behavior analyzed

### Marketing Efficiency
- **ROI Analysis**: Marketing spend effectiveness measured
- **Acquisition Costs**: Cost per customer varies by region
- **Optimization Opportunities**: Identified areas for marketing spend optimization

## 📸 Dashboard Preview

The Power BI dashboard includes:
- **Sales Overview**: Total sales, customers, and marketing spend
- **Trend Analysis**: Time-series visualizations
- **Geographic Distribution**: Country and branch performance maps
- **Performance Metrics**: KPIs and comparative analysis
- **Interactive Filters**: Year, month, country, and branch filters

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👤 Author

**Kazi Bony Amin**
- GitHub: [@bonyaminshaznuz](https://github.com/bonyaminshaznuz)
- LinkedIn: [bonyaminshaznuz](https://www.linkedin.com/in/bonyaminshaznuz/)
- Portfolio: [shaznuz.com](https://www.shaznuz.com/)

## 🙏 Acknowledgments

- KFC for the business case study
- Data analytics community for inspiration
- Open-source tools and libraries used in this project


---

⭐ If you found this project helpful, please consider giving it a star!
