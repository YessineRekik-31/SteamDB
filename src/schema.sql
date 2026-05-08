-- ============================================================
-- STEAMDB - Schema (CREATE TABLE)
-- Database: steam
-- ============================================================

CREATE DATABASE IF NOT EXISTS steam;
USE steam;

-- ============================================================
-- 1. companies
-- ============================================================
CREATE TABLE `companies` (
  `company_id` int NOT NULL,
  `company_name` text,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 2. engines
-- ============================================================
CREATE TABLE `engines` (
  `engine_id` int NOT NULL,
  `name` text,
  PRIMARY KEY (`engine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 3. users
-- ============================================================
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` text,
  `email` text,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 4. games
-- ============================================================
CREATE TABLE `games` (
  `game_id` int NOT NULL,
  `title` text,
  `release_date` date DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `engine_id` int DEFAULT NULL,
  `platform_id` int DEFAULT NULL,
  PRIMARY KEY (`game_id`),
  CONSTRAINT `fk_game_developer` FOREIGN KEY (`developer_id`) REFERENCES `companies` (`company_id`),
  CONSTRAINT `fk_game_publisher` FOREIGN KEY (`publisher_id`) REFERENCES `companies` (`company_id`),
  CONSTRAINT `fk_engine_game` FOREIGN KEY (`engine_id`) REFERENCES `engines` (`engine_id`),
  CONSTRAINT `fk_platform_game` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`platform_id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 5. platforms
-- ============================================================
CREATE TABLE `platforms` (
  `platform_id` int NOT NULL,
  `windows` int DEFAULT NULL,
  `mac` int DEFAULT NULL,
  `linux` int DEFAULT NULL,
  PRIMARY KEY (`platform_id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 6. genres
-- ============================================================
CREATE TABLE `genres` (
  `genre_id` int NOT NULL,
  `genre_name` text,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 7. game_genres
-- ============================================================
CREATE TABLE `game_genres` (
  `game_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`game_id`, `genre_id`),
  CONSTRAINT `fk_gg_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`),
  CONSTRAINT `fk_ggg_game` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 8. library
-- ============================================================
CREATE TABLE `library` (
  `user_id` int NOT NULL,
  `game_id` int NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `playtime_hours` int DEFAULT NULL,
  `achievements_unlocked` int DEFAULT NULL,
  PRIMARY KEY (`user_id`, `game_id`),
  CONSTRAINT `fk_libraryuser_game` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_librarygame_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 9. friends
-- ============================================================
CREATE TABLE `friends` (
  `user_id` int NOT NULL,
  `friend_id` int NOT NULL,
  `friendship_date` date DEFAULT NULL,
  `status` text,
  PRIMARY KEY (`user_id`, `friend_id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_friend` FOREIGN KEY (`friend_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 10. reviews
-- ============================================================
CREATE TABLE `reviews` (
  `user_id` int NOT NULL,
  `game_id` int NOT NULL,
  `rating` int DEFAULT NULL,
  `review_text` text,
  `hours_at_review` double DEFAULT NULL,
  `review_date` date DEFAULT NULL,
  `is_recommended` text,
  PRIMARY KEY (`user_id`, `game_id`),
  CONSTRAINT `fk_reviewuser_game` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_reviewgame_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 11. stats
-- ============================================================
CREATE TABLE `stats` (
  `game_id` int NOT NULL,
  `current_players` int DEFAULT NULL,
  `peak_players` int DEFAULT NULL,
  `total_hours` int DEFAULT NULL,
  `positive_reviews` int DEFAULT NULL,
  `negative_reviews` int DEFAULT NULL,
  PRIMARY KEY (`game_id`),
  CONSTRAINT `fk_statss_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 12. achievements
-- ============================================================
CREATE TABLE `achievements` (
  `game_id` int NOT NULL,
  `has_achievements` int DEFAULT NULL,
  `total_achievements` int DEFAULT NULL,
  `avg_completion_pct` double DEFAULT NULL,
  PRIMARY KEY (`game_id`),
  CONSTRAINT `fk_achievements_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 13. dlc_expansions
-- ============================================================
CREATE TABLE `dlc_expansions` (
  `dlc_id` int NOT NULL,
  `game_id` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`dlc_id`),
  CONSTRAINT `fk_dlc_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 14. support_info
-- ============================================================
CREATE TABLE `support_info` (
  `game_id` int NOT NULL,
  `website` text,
  `support_url` text,
  `support_email` text,
  PRIMARY KEY (`game_id`),
  CONSTRAINT `fk_support_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 15. system_requirements
-- ============================================================
CREATE TABLE `system_requirements` (
  `game_id` int NOT NULL,
  `cpu_min` text,
  `ram_gb_min` int DEFAULT NULL,
  `gpu_min` text,
  `storage_gb` double DEFAULT NULL,
  PRIMARY KEY (`game_id`),
  CONSTRAINT `fk_system_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ============================================================
-- 16. esports_tournaments
-- ============================================================
CREATE TABLE `esports_tournaments` (
  `tournament_id` int NOT NULL,
  `game_id` int DEFAULT NULL,
  `tournament_name` text,
  `year` int DEFAULT NULL,
  `prize_pool_usd` int DEFAULT NULL,
  PRIMARY KEY (`tournament_id`),
  CONSTRAINT `fk_tournament_game` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
