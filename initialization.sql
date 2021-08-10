CREATE TABLE `Decisions` (
  `decision_id` int,
  `user_id` int,
  `decision_text` varchar(100),
  PRIMARY KEY (`decision_id`)
);

CREATE TABLE `Users` (
  `user_id` int,
  `first_name` varchar(50),
  `last_name` varchar(50),
  `email` varchar(50),
  PRIMARY KEY (`user_id`)
);

CREATE TABLE `options_criteria_rankings` (
  `ranking_id` int,
  `option_id` int,
  `criterion_id` int,
  `option_rank_on_criterion` tinyint,
  PRIMARY KEY (`ranking_id`),
  FOREIGN KEY (`option_id`) REFERENCES `Options`(`option_id`)
);

CREATE TABLE `Options` (
  `option_id` int,
  `decision_id` int,
  `option_text` varchar(100),
  PRIMARY KEY (`option_id`)
);

CREATE TABLE `Criteria` (
  `criterion_id` int,
  `decision_ id` int,
  `ctiterion_text` varchar(100),
  `criterion_importance` tinyint,
  PRIMARY KEY (`criterion_id`)
);

