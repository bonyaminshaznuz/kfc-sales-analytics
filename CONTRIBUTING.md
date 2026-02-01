# Contributing to KFC Sales Analytics Project

First off, thank you for considering contributing to this project! 🎉

## Table of Contents
- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Getting Started](#getting-started)
- [Development Process](#development-process)
- [Style Guidelines](#style-guidelines)
- [Commit Messages](#commit-messages)
- [Pull Request Process](#pull-request-process)

## Code of Conduct

This project and everyone participating in it is governed by our commitment to creating a welcoming and inclusive environment. Please be respectful and constructive in all interactions.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include:

- **Clear title and description**
- **Steps to reproduce** the issue
- **Expected vs actual behavior**
- **Screenshots** if applicable
- **Environment details** (OS, Python version, SQL database, etc.)

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion, include:

- **Clear title and description**
- **Use case** - why this enhancement would be useful
- **Possible implementation** approach
- **Examples** from other projects (if applicable)

### Contributing Code

1. **Data Analysis Improvements**
   - New SQL queries
   - Enhanced Python analysis
   - Additional visualizations

2. **Documentation**
   - Improve README
   - Add tutorials
   - Fix typos or clarify explanations

3. **Visualizations**
   - New Power BI dashboards
   - Alternative visualization tools
   - Interactive charts

4. **Testing**
   - Data validation scripts
   - Query optimization
   - Performance improvements

## Getting Started

### Prerequisites

```bash
# Python 3.x
python --version

# Required packages
pip install pandas jupyter

# SQL Database (MySQL or PostgreSQL)
# Power BI Desktop
```

### Setup Development Environment

1. **Fork the repository**
   ```bash
   # Click 'Fork' on GitHub
   ```

2. **Clone your fork**
   ```bash
   git clone https://github.com/YOUR_USERNAME/kfc-sales-analytics.git
   cd kfc-sales-analytics
   ```

3. **Create a branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

4. **Set up the database**
   ```bash
   mysql -u username -p database_name < kfc_past_sales.sql
   ```

## Development Process

### For Python Contributions

1. **Follow PEP 8** style guidelines
2. **Add docstrings** to functions
3. **Include comments** for complex logic
4. **Test your code** before submitting

Example:
```python
def calculate_roi(sales, marketing_spend):
    """
    Calculate Return on Investment for marketing spend.
    
    Args:
        sales (float): Total sales amount
        marketing_spend (float): Total marketing expenditure
        
    Returns:
        float: ROI as a ratio (sales/marketing_spend)
    """
    if marketing_spend == 0:
        return 0
    return sales / marketing_spend
```

### For SQL Contributions

1. **Use clear, descriptive names**
2. **Add comments** explaining complex queries
3. **Format consistently** (indentation, capitalization)
4. **Test queries** with sample data

Example:
```sql
-- Calculate year-over-year growth rate
-- Compares each year's sales to the previous year
SELECT 
    s1.Year,
    SUM(s1.Sales) AS Current_Year_Sales,
    SUM(s2.Sales) AS Previous_Year_Sales,
    ((SUM(s1.Sales) - SUM(s2.Sales)) / SUM(s2.Sales)) * 100 AS YoY_Growth
FROM kfc_sales s1
LEFT JOIN kfc_sales s2 ON s1.Year = s2.Year + 1
GROUP BY s1.Year
ORDER BY s1.Year;
```

### For Documentation Contributions

1. **Use clear, concise language**
2. **Include examples** where helpful
3. **Check spelling and grammar**
4. **Follow markdown formatting** standards

## Style Guidelines

### Python Code Style

- Follow **PEP 8**
- Use **4 spaces** for indentation
- **Maximum line length**: 100 characters
- Use **meaningful variable names**
- Add **type hints** where appropriate

### SQL Code Style

- **Keywords in UPPERCASE**: SELECT, FROM, WHERE, etc.
- **Table/column names in lowercase**: kfc_sales, sales, etc.
- **Indent subqueries** for readability
- **One clause per line** for complex queries
- **Add comments** for business logic

### Markdown Style

- Use **headers** to organize content
- Include **code blocks** with language specification
- Add **links** for references
- Use **tables** for structured data
- Include **emojis** sparingly for visual interest

## Commit Messages

### Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

- **feat**: New feature
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Code style changes (formatting, etc.)
- **refactor**: Code refactoring
- **test**: Adding or updating tests
- **chore**: Maintenance tasks

### Examples

```
feat(sql): Add query for customer lifetime value

Added new SQL query to calculate customer lifetime value
based on historical purchase data. Includes aggregation
by customer segment and time period.

Closes #42
```

```
docs(readme): Update installation instructions

Clarified Python package installation steps and added
troubleshooting section for common setup issues.
```

```
fix(python): Correct data type conversion in cleaning script

Fixed issue where Month column was not properly converted
to categorical type, causing sorting issues in analysis.

Fixes #38
```

## Pull Request Process

### Before Submitting

1. ✅ **Update documentation** if needed
2. ✅ **Test your changes** thoroughly
3. ✅ **Follow style guidelines**
4. ✅ **Update CHANGELOG** if applicable
5. ✅ **Ensure no merge conflicts**

### Submitting a Pull Request

1. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

2. **Create Pull Request** on GitHub
   - Clear title describing the change
   - Detailed description of what and why
   - Reference any related issues
   - Include screenshots if UI changes

3. **PR Template**
   ```markdown
   ## Description
   Brief description of changes
   
   ## Type of Change
   - [ ] Bug fix
   - [ ] New feature
   - [ ] Documentation update
   - [ ] Performance improvement
   
   ## Testing
   Describe how you tested your changes
   
   ## Checklist
   - [ ] Code follows style guidelines
   - [ ] Documentation updated
   - [ ] Tests added/updated
   - [ ] No breaking changes
   
   ## Related Issues
   Closes #issue_number
   ```

### Review Process

1. **Maintainer review** - Usually within 2-3 days
2. **Address feedback** - Make requested changes
3. **Approval** - Once approved, PR will be merged
4. **Merge** - Squash and merge is preferred

## Additional Notes

### File Structure

```
Data Analytics Project/
├── README.md                    # Main documentation
├── PROJECT_REPORT.md            # Detailed analysis
├── PRESENTATION.md              # Executive presentation
├── QUESTIONS.md                 # Q&A document
├── CONTRIBUTING.md              # This file
├── LICENSE                      # MIT License
├── .gitignore                   # Git ignore rules
├── Data_format.ipynb            # Python notebook
├── Kfc_Data_queries.sql         # SQL queries
├── kfc_past_sales.sql           # Database schema
├── KFC_Past_Sales_Dataset.csv   # Raw data
└── Graph.pbix                   # Power BI file
```

### Adding New Queries

When adding new SQL queries to `Kfc_Data_queries.sql`:

1. **Add a comment** describing the query purpose
2. **Number sequentially** (e.g., -- 21, -- 22)
3. **Test with sample data**
4. **Document in PROJECT_REPORT.md**

### Adding New Visualizations

When adding new visualizations:

1. **Document the insight** it provides
2. **Include in Power BI** file or create new file
3. **Add screenshot** to documentation
4. **Explain interpretation** in report

### Data Privacy

- **Do not commit** sensitive or personal data
- **Anonymize** any real customer data
- **Use sample data** for examples
- **Follow GDPR** and data protection guidelines

## Recognition

Contributors will be recognized in:
- **README.md** Contributors section
- **Release notes** for significant contributions
- **Project documentation** where applicable

## Questions?

Feel free to:
- **Open an issue** for questions
- **Start a discussion** on GitHub Discussions
- **Contact maintainers** directly

## Thank You! 🙏

Your contributions make this project better for everyone. We appreciate your time and effort!

---

**Happy Contributing!** 🚀
