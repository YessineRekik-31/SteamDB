# 🎮 STEAMDB — Relational Database of a Video Game Distribution Platform

> A relational database project inspired by the Steam gaming platform, built with MySQL.  
> Supervised by **Malek Ben Youssef** — SUP'COM, April 2026

---

## 📌 Introduction

This project consists of designing and implementing a relational database inspired by the Steam platform. The objective is to model information related to video games, users, and their interactions. MySQL was used to create tables, manage relationships, and execute SQL queries.

---

## 🗂️ Project Structure

```
Steam-Database/
│
├── 📁 docs/
│   ├── MCD.png                  # Conceptual Model
│   ├── MLD.png                  # Relational Model
│   └── presentation.pdf         # Full project presentation
│
├── 📁 src/
│   ├── schema.sql               # Database creation (CREATE TABLE)
│   ├── insert.sql               # Sample data insertion
│   └── queries.sql              # All 30 implemented SQL queries
│
├── 📁 db/
│   └── steam.db                 # SQLite database file
│
├── .gitignore
└── README.md
```

---

## 🧩 Conceptual Model (MCD) — 16 Entities

The database is built around **16 entities**:

`Users` · `Games` · `Library` · `Reviews` · `Friends` · `Genres` · `Game_Genres` · `Companies` · `Engines` · `Platform` · `DLC_Expansions` · `System_Requirements` · `Support_Info` · `Stats` · `Achievements` · `Esports_Tournaments`

---

## 🔗 Relational Model (MLD)

```
Users           (user_id, username, email, created_at)
Friends         (user_id#, friend_id#, friendship_date, status)
Games           (game_id, title, release_date, price, developer_id#, publisher_id#, engine_id#, platform_id#)
Platform        (platform_id, windows, mac, linux)
Engines         (engine_id, name)
Companies       (company_id, company_name)
Library         (user_id#, game_id#, playtime_hours, achievements_unlocked, purchase_date)
Reviews         (user_id#, game_id#, rating, review_text, review_date, hours_at_review, is_recommended)
Genres          (genre_id, genre_name)
Game_Genres     (game_id#, genre_id#)
DLC_Expansions  (dlc_id, game_id#, price)
System_Requirements (game_id#, cpu_min, ram_gb_min, gpu_min, storage_gb)
Support_Info    (game_id#, website, support_url, support_email)
Stats           (game_id#, current_players, peak_players, total_hours, positive_reviews, negative_reviews)
Achievements    (game_id#, has_achievements, total_achievements, avg_completion_pct)
Esports_Tournaments (tournament_id, game_id#, tournament_name, year, prize_pool_usd)
```

---

## 📋 Business Rules

### 🎮 Games
- A game must have a unique identifier
- A game must have one developer and one publisher
- A game must use one engine
- A game must be available on at least one platform
- A game can belong to multiple genres
- A game can have multiple DLCs

### 👤 Users
- A user must have a unique identifier
- A user can own multiple games
- A user can have multiple friends
- A friendship must have a status

### ⭐ Reviews
- A review must be linked to one user and one game
- A user can only write one review per game
- A review contains a rating and a recommendation

### 📚 Library
- The library must contain the purchase date
- The library must contain playtime hours (≥ 0)

### 🏢 Companies
- A company can develop multiple games
- A company can publish multiple games

### ⚙️ Constraints
- A game must have one stats sheet and one system configuration
- Platforms are Windows, Linux, or Mac
- A game can be free or paid

---

## 🔍 Implemented Queries (30 Queries)

Here are some highlights from the 30 SQL queries implemented:

| # | Query | Use Case |
|---|---|---|
| 1 | Best free games | Gamer on a budget |
| 2 | Cross-platform games | Gamer on any OS |
| 3 | Games with support but bad reviews | Quality manager |
| 4 | Esports prize pool ranking | Esports sponsor |
| 5 | Dominant engine in esports | Developer choosing tech |
| 6 | Cheapest games with low storage | Low-end PC gamer |
| 7 | Games with too many achievements | Completionist gamer |
| 8 | Average playtime by genre | Product team |
| 9 | Best developers by reviews | Publisher seeking studios |
| 10 | Games with toxic community | Gamer avoiding toxicity |
| 11 | Top publishers by revenue | Investor |
| 12 | Most addictive games by genre | Investor |
| 13 | High retention niche games | Developer |
| 14 | Best-rated Linux games | Linux gamer |
| 15 | ROI per game | Investor |
| 16 | Fast achievement progression | Game designer |
| 17 | Popular games with low revenue | Publisher |
| 18 | Whale players | Marketing team |
| 19 | Best Linux community ratings | Linux gamer |
| 20 | Bad games without real support | Gamer |
| 21 | Popular games compatible with my PC | Technical team |
| 22 | Users with shared games (matchmaking base) | Gamer |
| 23 | Most played game overall | Gamer |
| 24 | Games without DLC | Content analyst |
| 25 | Most expensive game per genre | Pricing team |
| 26 | Games priced below studio average | Gamer hunting deals |
| 27 | Expensive games that are still very played | Publisher |
| 28 | Most profitable platform | Publisher |
| 29 | Top 3 games per genre | Gamer |
| 30 | Full game popularity ranking | Gamer |

---

## 🚀 How to Run

### Using MySQL
```bash
# 1. Clone the repository
git clone https://github.com/YOUR_USERNAME/Steam-Database.git
cd Steam-Database

# 2. Create the database
mysql -u root -p < src/schema.sql

# 3. Insert sample data
mysql -u root -p steam_db < src/insert.sql

# 4. Run queries
mysql -u root -p steam_db < src/queries.sql
```

### Using SQLite
```bash
sqlite3 db/steam.db < src/schema.sql
sqlite3 db/steam.db < src/insert.sql
```

---

## 🛠️ Technologies Used

- **MySQL** — Database creation, relationships, and queries
- **SQLite** — Lightweight database file
- **SQL** — Joins, subqueries, window functions (RANK, DENSE_RANK), aggregations

---

## 📄 License

This project is open source and available under the MIT License.
