# Fifa-World-Cup-Project


# FIFA World Cup Data Analysis Project

## Overview

This project analyzes historical FIFA World Cup data from 1930 to 2014, focusing on trends in goals scored, match attendance, and team performance. It includes data cleaning, database design, and exploratory analysis using Python and MySQL.

---

## Table of Contents

- [Project Description](#project-description)
- [Data Sources](#data-sources)
- [Database Schema](#database-schema)
- [Data Cleaning](#data-cleaning)
- [Analysis Highlights](#analysis-highlights)
- [How to Use](#how-to-use)
- [Future Scope](#future-scope)
- [Acknowledgments](#acknowledgments)
- [License](#license)

---

## Project Description

The goal of this project is to explore and visualize FIFA World Cup history by:
- Analyzing trends in goals scored and attendance over time
- Investigating team and player performance
- Building a normalized relational database for efficient querying and analysis

---

## Data Sources

- **Primary dataset:** [Kaggle FIFA World Cup Data](https://www.kaggle.com/datasets)
- Contains match-level, tournament-level, and player-level data from 1930 to 2014

---

## Database Schema

The project uses a MySQL database with three main tables:

| Table              | Description                  | Key Columns                                 |
|--------------------|-----------------------------|---------------------------------------------|
| `cups`             | Tournament-level data        | year, country, winner, attendance, etc.     |
| `worldcup_matches` | Match-level data             | year, date, teams, goals, attendance, etc.  |
| `players`          | Player-level match data      | roundid, matchid, player_name, position     |

- Foreign key relationships ensure referential integrity between tournaments, matches, and players.

---

## Data Cleaning

- Removed rows with missing or invalid data (e.g., empty or `<NA>` rows).
- Converted columns like `attendance` and `year` from float/string to integer for consistency.
- Standardized country/team names for accurate grouping.
- Cleaned attendance formatting (e.g., "590.549" → "590549").
- Updated MySQL schema to match cleaned data types.

---

## Analysis Highlights

- Explored trends in average goals per match and total/average attendance.
- Found that attendance has increased over time, while goals per match fluctuate.
- Visualized tournament winners, top-performing teams, and key match statistics.

---

## How to Use

1. **Clone the repository:**
2. 
2. **Set up the database:**
- Use `database_schema.sql` to create the MySQL schema.
- Load cleaned CSV data into the respective tables.

3. **Run analysis:**
- Open `Fifa-World-Cup-Project.ipynb` in Jupyter Notebook.
- Follow the notebook cells to reproduce data cleaning and analysis.

---

## Future Scope

- Automate data import and cleaning using the MySQL Python connector for scalability and reproducibility.
- Extend analysis to include recent tournaments (2018, 2022).
- Add interactive dashboards for real-time exploration.
- Enable community contributions for new features and data sources.

---

## Acknowledgments

- [Kaggle](https://www.kaggle.com/datasets) for the FIFA World Cup data.
- FIFA for official records and statistics.

---

## License

This project is open-source and available under the MIT License.

