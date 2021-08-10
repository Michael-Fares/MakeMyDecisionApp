DROP TABLE IF EXISTS Options_Criteria_Rankings, Criteria, Options, Decisions, Users;

CREATE TABLE Users (
  user_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  PRIMARY KEY (user_id)
);


CREATE TABLE Decisions (
  decision_id INT NOT NULL AUTO_INCREMENT,
  user_id INT,
  decision_text VARCHAR(100),
  PRIMARY KEY (decision_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)

);


CREATE TABLE Options (
  option_id INT NOT NULL AUTO_INCREMENT,
  decision_id INT,
  option_text VARCHAR(100),
  PRIMARY KEY (option_id),
  FOREIGN KEY (decision_id) REFERENCES Decisions(decision_id)
);

CREATE TABLE Criteria (
  criterion_id INT NOT NULL AUTO_INCREMENT,
  decision_id INT,
  criterion_text VARCHAR(100),
  criterion_importance TINYINT,
  PRIMARY KEY (criterion_id),
  FOREIGN KEY (decision_id) REFERENCES Decisions(decision_id)
);

CREATE TABLE Options_Criteria_Rankings (
  ranking_id INT NOT NULL AUTO_INCREMENT,
  option_id INT,
  criterion_id INT,
  option_rank_on_criterion TINYINT,
  PRIMARY KEY (ranking_id),
  FOREIGN KEY (option_id) REFERENCES Options(option_id),
  FOREIGN KEY (criterion_id) REFERENCES Criteria(criterion_id)
);
