-- ============================================================
-- STEAMDB - 30 SQL Queries
-- Database: steam
-- ============================================================

USE steam;

-- ============================================================
-- Query 1 - Best Free Games
-- For a gamer on a budget: find the best free games to download
-- ============================================================
SELECT g.title, s.positive_reviews, s.current_players
FROM games g, stats s
WHERE g.game_id = s.game_id
AND g.price = 0
ORDER BY s.positive_reviews DESC;

-- ============================================================
-- Query 2 - Cross-Platform Games
-- For a gamer: find games playable on any operating system
-- ============================================================
SELECT g.title, g.price
FROM games g, platforms p
WHERE g.platform_id = p.platform_id
AND p.windows = 1
AND p.linux = 1
AND p.mac = 1
ORDER BY g.title;

-- ============================================================
-- Query 3 - Games With Support But Bad Reviews
-- For a quality manager: detect poorly rated games with support infrastructure
-- ============================================================
SELECT g.title, s.positive_reviews, s.negative_reviews, si.support_url
FROM games g, stats s, support_info si
WHERE g.game_id = s.game_id
AND g.game_id = si.game_id
AND s.negative_reviews > s.positive_reviews
ORDER BY s.negative_reviews DESC;

-- ============================================================
-- Query 4 - Esports Games By Prize Pool
-- For an esports sponsor: choose the most profitable game to sponsor
-- ============================================================
SELECT g.title,
       COUNT(et.tournament_id) AS total_tournaments,
       SUM(et.prize_pool_usd) AS total_prize_pool,
       MAX(et.prize_pool_usd) AS biggest_tournament,
       ROUND(AVG(et.prize_pool_usd), 0) AS avg_prize_pool
FROM esports_tournaments et, games g
WHERE g.game_id = et.game_id
GROUP BY g.title
ORDER BY total_prize_pool DESC;

-- ============================================================
-- Query 5 - Dominant Engine In Esports
-- For a developer: find which engine dominates the esports scene
-- ============================================================
SELECT e.name AS engine,
       COUNT(DISTINCT et.tournament_id) AS tournaments,
       SUM(et.prize_pool_usd) AS total_prize_pool
FROM engines e, games g, esports_tournaments et
WHERE e.engine_id = g.engine_id
AND et.game_id = g.game_id
GROUP BY e.name
ORDER BY total_prize_pool DESC;

-- ============================================================
-- Query 6 - Cheapest Games With Low Storage
-- For a gamer with a low-end PC: find cheap and lightweight games
-- ============================================================
SELECT g.title, g.price, sr.storage_gb, sr.ram_gb_min
FROM games g, system_requirements sr
WHERE sr.game_id = g.game_id
AND sr.storage_gb < 5
AND g.price IS NOT NULL
AND g.price < 15
ORDER BY g.price ASC, sr.storage_gb ASC;

-- ============================================================
-- Query 7 - Games With Too Many Achievements
-- For a completionist gamer: find games with many achievements but few unlocked
-- ============================================================
SELECT g.title,
       a.total_achievements,
       AVG(l.achievements_unlocked) AS avg_unlocked
FROM games g, achievements a, library l
WHERE g.game_id = a.game_id
AND g.game_id = l.game_id
GROUP BY g.title, a.total_achievements
HAVING a.total_achievements > 100
ORDER BY avg_unlocked ASC;

-- ============================================================
-- Query 8 - Average Playtime By Genre
-- For a product team: find which genre retains players the longest
-- ============================================================
SELECT gen.genre_name,
       ROUND(AVG(l.playtime_hours), 1) AS avg_hours
FROM genres gen, game_genres gg, library l
WHERE gg.genre_id = gen.genre_id
AND l.game_id = gg.game_id
GROUP BY gen.genre_name
ORDER BY avg_hours DESC;

-- ============================================================
-- Query 9 - Best Developers By Reviews
-- For a publisher: identify reliable studios to sign
-- ============================================================
SELECT c.company_name,
       COUNT(g.game_id) AS total_games,
       ROUND(AVG(100.0 * s.positive_reviews / NULLIF(s.positive_reviews + s.negative_reviews, 0)), 1) AS avg_positive_pct
FROM companies c, games g, stats s
WHERE c.company_id = g.developer_id
AND s.game_id = g.game_id
AND s.positive_reviews + s.negative_reviews > 1000
GROUP BY c.company_name
ORDER BY avg_positive_pct DESC;

-- ============================================================
-- Query 10 - Games With Toxic Community
-- For a gamer: avoid games with the most toxic communities
-- ============================================================
SELECT g.title,
       s.total_hours,
       s.negative_reviews,
       ROUND(s.negative_reviews / NULLIF(s.total_hours, 0), 4) AS toxicity_ratio
FROM games g, stats s
WHERE g.game_id = s.game_id
AND s.total_hours > 100000
ORDER BY toxicity_ratio DESC;

-- ============================================================
-- Query 11 - Top Publishers By Revenue
-- For an investor: see which publishers generate the most revenue
-- ============================================================
SELECT c.company_name,
       ROUND(SUM(g.price), 2) AS revenue_estimate,
       COUNT(DISTINCT g.game_id) AS total_games
FROM companies c, games g, library l
WHERE c.company_id = g.publisher_id
AND g.game_id = l.game_id
GROUP BY c.company_name
ORDER BY revenue_estimate DESC;

-- ============================================================
-- Query 12 - Most Addictive Games By Genre (Revenue by Genre)
-- For an investor: see which genres generate the most revenue
-- ============================================================
SELECT gen.genre_name,
       ROUND(SUM(g.price), 2) AS total_revenue_estimate,
       COUNT(DISTINCT g.game_id) AS total_games
FROM genres gen, game_genres gg, games g, library l
WHERE gg.genre_id = gen.genre_id
AND g.game_id = gg.game_id
AND l.game_id = g.game_id
GROUP BY gen.genre_name
ORDER BY total_revenue_estimate DESC;

-- ============================================================
-- Query 13 - High Retention Niche Games
-- For a developer: find niche games where few players are highly engaged
-- ============================================================
SELECT g.title,
       COUNT(l.user_id) AS players,
       SUM(l.playtime_hours) AS total_hours,
       ROUND(SUM(l.playtime_hours) / NULLIF(COUNT(l.user_id), 0), 1) AS avg_hours_per_player
FROM games g, library l
WHERE g.game_id = l.game_id
GROUP BY g.title
HAVING players < 100
ORDER BY avg_hours_per_player DESC;

-- ============================================================
-- Query 14 - Best-Rated Linux Games
-- For a Linux gamer: find the best-rated games compatible with Linux
-- ============================================================
SELECT g.title,
       s.positive_reviews,
       s.negative_reviews,
       ROUND(100.0 * s.positive_reviews / NULLIF(s.positive_reviews + s.negative_reviews, 0), 1) AS positive_pct,
       s.current_players
FROM games g, platforms p, stats s
WHERE p.platform_id = g.platform_id
AND s.game_id = g.game_id
AND p.linux = 1
AND s.positive_reviews + s.negative_reviews > 1000
ORDER BY positive_pct DESC;

-- ============================================================
-- Query 15 - ROI Per Game
-- For an investor: identify the most profitable games per hour played
-- ============================================================
SELECT g.title, g.price, s.total_hours,
       COUNT(l.user_id) AS owners_in_db,
       ROUND(g.price * COUNT(l.user_id), 2) AS estimated_revenue,
       ROUND(g.price * COUNT(l.user_id) / NULLIF(s.total_hours, 0) * 1000, 4) AS revenue_per_1k_hours
FROM games g, stats s, library l
WHERE s.game_id = g.game_id
AND l.game_id = g.game_id
AND g.price > 0
GROUP BY g.title, g.price, s.total_hours
ORDER BY revenue_per_1k_hours DESC;

-- ============================================================
-- Query 16 - Fast Achievement Progression
-- For a game designer: detect if the progression system is too easy
-- ============================================================
SELECT g.title,
       ROUND(AVG(l.achievements_unlocked), 1) AS avg_unlocked,
       ROUND(AVG(l.playtime_hours), 1) AS avg_hours,
       ROUND(AVG(l.achievements_unlocked) / NULLIF(AVG(l.playtime_hours), 0), 3) AS achievements_per_hour
FROM library l, games g, achievements a
WHERE g.game_id = l.game_id
AND a.game_id = l.game_id
AND a.has_achievements = 1
AND l.playtime_hours > 5
GROUP BY g.title
ORDER BY achievements_per_hour DESC;

-- ============================================================
-- Query 17 - Popular Games With Low Revenue
-- For a publisher: detect popular games that underperform financially
-- ============================================================
SELECT g.title,
       s.current_players,
       COUNT(l.user_id) AS owners,
       ROUND(g.price * COUNT(l.user_id), 2) AS revenue
FROM games g, stats s, library l
WHERE s.game_id = g.game_id
AND l.game_id = g.game_id
GROUP BY g.title, s.current_players, g.price
HAVING s.current_players > 10000 AND revenue < 50000
ORDER BY s.current_players DESC;

-- ============================================================
-- Query 18 - Whale Players
-- For a marketing team: target high spenders for premium offers
-- ============================================================
SELECT u.username,
       COUNT(l.game_id) AS games_owned,
       ROUND(SUM(COALESCE(g.price, 0)), 2) AS total_spent,
       SUM(l.playtime_hours) AS total_hours,
       ROUND(SUM(COALESCE(g.price, 0)) / NULLIF(COUNT(l.game_id), 0), 2) AS avg_price_per_game
FROM library l, users u, games g
WHERE u.user_id = l.user_id
AND g.game_id = l.game_id
GROUP BY u.username
ORDER BY total_spent DESC;

-- ============================================================
-- Query 19 - Best Linux Community Ratings
-- For a Linux gamer: find the best community-rated Linux games
-- ============================================================
SELECT g.title,
       ROUND(AVG(r.rating), 2) AS avg_rating,
       p.linux,
       p.windows,
       COUNT(r.user_id) AS total_reviews,
       ROUND(AVG(r.hours_at_review), 1) AS avg_hours
FROM games g, reviews r, platforms p, stats s
WHERE g.game_id = r.game_id
AND p.game_id = g.game_id
AND s.game_id = g.game_id
AND p.linux = 1
GROUP BY g.title, p.linux, p.windows
HAVING COUNT(r.user_id) >= 2
ORDER BY avg_rating DESC;

-- ============================================================
-- Query 20 - Bad Games Without Real Support
-- For a gamer: avoid poorly rated games with no real support
-- ============================================================
SELECT g.title, si.support_email, ROUND(AVG(r.rating), 2) AS avg_rating
FROM games g, reviews r, support_info si
WHERE g.game_id = r.game_id
AND si.game_id = g.game_id
AND si.support_email LIKE '%valvesoftware%'
GROUP BY g.title, si.support_email
HAVING AVG(r.rating) < 5
ORDER BY avg_rating ASC;

-- ============================================================
-- Query 21 - Popular Games Compatible With My PC
-- For a technical team: ensure popular games run on common configs
-- ============================================================
SELECT g.title,
       COALESCE(g.price, 0) AS price,
       sr.ram_gb_min,
       sr.storage_gb,
       s.current_players
FROM games g, system_requirements sr, stats s
WHERE sr.game_id = g.game_id
AND s.game_id = g.game_id
AND sr.ram_gb_min <= 8
AND sr.storage_gb <= 30
AND s.current_players > 10000
ORDER BY s.current_players DESC;

-- ============================================================
-- Query 22 - Users With Shared Games (Matchmaking Base)
-- For a gamer: see which friend you share the most games with
-- ============================================================
SELECT u1.username AS user,
       u2.username AS friend,
       COUNT(*) AS shared_games
FROM library l1, library l2, friends f, users u1, users u2
WHERE l1.game_id = l2.game_id
AND l1.user_id = f.user_id
AND l2.user_id = f.friend_id
AND u1.user_id = f.user_id
AND u2.user_id = f.friend_id
AND f.status = 'accepted'
AND l1.user_id < l2.user_id
GROUP BY u1.username, u2.username
ORDER BY shared_games DESC;

-- ============================================================
-- Query 23 - Most Played Game Overall
-- For a gamer: find the most played game on the entire platform
-- ============================================================
SELECT g.title, s.total_hours
FROM games g, stats s
WHERE g.game_id = s.game_id
AND s.total_hours = (
    SELECT MAX(total_hours) FROM stats
);

-- ============================================================
-- Query 24 - Games Without DLC
-- For a content analyst: identify complete games with no extra monetization
-- ============================================================
SELECT g.title
FROM games g
WHERE NOT EXISTS (
    SELECT 1
    FROM dlc_expansions d
    WHERE d.game_id = g.game_id
);

-- ============================================================
-- Query 25 - Most Expensive Game Per Genre
-- For a pricing team: identify premium games per genre
-- ============================================================
SELECT g.title, g.price
FROM games g, game_genres gg
WHERE g.game_id = gg.game_id
AND g.price > ALL (
    SELECT g2.price
    FROM games g2, game_genres gg2
    WHERE g2.game_id = gg2.game_id
    AND gg2.genre_id = gg.genre_id
    AND g2.game_id <> g.game_id
    AND g2.price IS NOT NULL
);

-- ============================================================
-- Query 26 - Games Priced Below Studio Average
-- For a gamer: find games cheaper than the studio's usual pricing
-- ============================================================
SELECT g.title, g.price, c.company_name AS developer,
       ROUND((SELECT AVG(g2.price) FROM games g2
              WHERE g2.developer_id = g.developer_id
              AND g2.price > 0), 2) AS dev_avg_price
FROM games g, companies c
WHERE c.company_id = g.developer_id
AND g.price > 0
AND g.price < (SELECT AVG(g3.price) FROM games g3
               WHERE g3.developer_id = g.developer_id AND g3.price > 0)
ORDER BY dev_avg_price DESC;

-- ============================================================
-- Query 27 - Expensive But Very Played Games
-- For a publisher: check if a game's high price is justified by engagement
-- ============================================================
SELECT g.title, g.price,
       ROUND(AVG(l.playtime_hours), 1) AS avg_playtime
FROM games g, library l
WHERE g.game_id = l.game_id
AND g.price > (SELECT AVG(price) FROM games WHERE price > 0)
GROUP BY g.title, g.price
HAVING AVG(l.playtime_hours) > (SELECT AVG(playtime_hours) FROM library)
ORDER BY g.price DESC;

-- ============================================================
-- Query 28 - Most Profitable Platform
-- For a publisher: see which platform generates the most revenue
-- ============================================================
SELECT
    CASE
        WHEN p.windows = 1 THEN 'Windows'
        WHEN p.linux = 1 THEN 'Linux'
        WHEN p.mac = 1 THEN 'Mac'
    END AS platform,
    ROUND(SUM(g.price), 2) AS total_revenue_estimate
FROM games g, platforms p, library l
WHERE g.platform_id = p.platform_id
AND g.game_id = l.game_id
GROUP BY platform
ORDER BY total_revenue_estimate DESC;

-- ============================================================
-- Query 29 - Top 3 Games Per Genre
-- For a gamer: see the 3 most popular games in each genre
-- ============================================================
SELECT *
FROM (
    SELECT gen.genre_name, g.title, s.current_players,
           DENSE_RANK() OVER (PARTITION BY gen.genre_name ORDER BY s.current_players DESC) AS rnk
    FROM games g, stats s, game_genres gg, genres gen
    WHERE g.game_id = s.game_id
    AND gg.game_id = g.game_id
    AND gen.genre_id = gg.genre_id
) t
WHERE rnk <= 3;

-- ============================================================
-- Query 30 - Full Game Popularity Ranking
-- For a gamer: see the general ranking of all games by popularity
-- ============================================================
SELECT g.title,
       s.current_players,
       RANK() OVER (ORDER BY s.current_players DESC) AS rank_popularity
FROM games g, stats s
WHERE g.game_id = s.game_id;
