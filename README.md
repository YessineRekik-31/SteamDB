
```markdown
# 🎮 STEAMDB — Relational Database of a Video Game Distribution Platform

> A relational database project inspired by the Steam platform, built with MySQL.  
> Supervised by **Malek Ben Youssef** — SUP'COM, April 2026

---

## 👥 Team

| Name | School |
|---|---|
| Yessine Rekik | SUP'COM |
| Shatha Ifaoui | SUP'COM |

---

## 📌 Introduction

This project consists of designing and implementing a relational database inspired by the Steam platform. The objective is to model information related to video games, users, and their interactions. MySQL was used to create tables, manage relationships, and execute SQL queries.

---

## 🗂️ Project Structure

```
Steam-Database/
│
├── 📁 docs/
│   ├── MCD.png
│   ├── MLD.png
│   └── presentation.pdf
│
├── 📁 src/
│   ├── schema.sql
│   ├── insert.sql
│   └── queries.sql
│
├── 📁 db/
│   └── steam.db
│
└── README.md
```

---

## 🧩 Conceptual Model (MCD) — 15 Entities

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
- Must have a unique identifier
- Must have one developer and one publisher
- Must use one engine and be on at least one platform
- Can belong to multiple genres and have multiple DLCs

### 👤 Users
- Must have a unique identifier
- Can own multiple games and have multiple friends
- Friendship must have a status

### ⭐ Reviews
- Linked to one user and one game
- One review per user per game
- Contains a rating and a recommendation

### 📚 Library
- Must contain purchase date and playtime hours (≥ 0)

### 🏢 Companies
- Can develop and publish multiple games

### ⚙️ Constraints
- One stats sheet and one system config per game
- Platforms: Windows, Linux, or Mac
- A game can be free or paid

---

## 🔍 30 Implemented Queries

| # | Query | Use Case |
|---|---|---|
| 1 | Best free games | Gamer on a budget |
| 2 | Cross-platform games | Any OS gamer |
| 3 | Games with support but bad reviews | Quality manager |
| 4 | Esports prize pool ranking | Esports sponsor |
| 5 | Dominant engine in esports | Developer |
| 6 | Cheapest + lightest games | Low-end PC gamer |
| 7 | Games with too many achievements | Completionist |
| 8 | Average playtime by genre | Product team |
| 9 | Best developers by reviews | Publisher |
| 10 | Games with toxic community | Gamer |
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
| 22 | Shared games between friends | Matchmaking |
| 23 | Most played game overall | Gamer |
| 24 | Games without DLC | Content analyst |
| 25 | Most expensive game per genre | Pricing team |
| 26 | Games priced below studio average | Deal hunter |
| 27 | Expensive but very played games | Publisher |
| 28 | Most profitable platform | Publisher |
| 29 | Top 3 games per genre | Gamer |
| 30 | Full popularity ranking | Gamer |

---

## 🚀 How to Run

```bash
# MySQL
mysql -u root -p < src/schema.sql
mysql -u root -p steam_db < src/insert.sql
mysql -u root -p steam_db < src/queries.sql

# SQLite
sqlite3 db/steam.db < src/schema.sql
sqlite3 db/steam.db < src/insert.sql
```

---

## 🛠️ Technologies

- **MySQL** — Tables, relationships, queries
- **SQLite** — Lightweight database file
- **SQL** — Joins, subqueries, window functions (RANK, DENSE_RANK)
```

Just paste this directly into your `README.md` file on GitHub! 🚀
