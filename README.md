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
