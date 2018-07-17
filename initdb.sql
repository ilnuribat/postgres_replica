CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  number INTEGER
);

INSERT INTO users SELECT generate_series(1,10) AS id, md5(random()::text)
ON CONFLICT (id) DO NOTHING;

CREATE PUBLICATION allpub FOR TABLE users;