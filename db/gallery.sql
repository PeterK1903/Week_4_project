DROP TABLE exhibits;
DROP TABLE artists;

CREATE TABLE artists(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INT,
  DOB INT,
  DOD INT
);

CREATE TABLE exhibits(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  category VARCHAR(255),
  period INT,
  displayed_since INT,
  artist_id INT REFERENCES artists(id)
);
