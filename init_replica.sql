CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  number INTEGER
);

CREATE SUBSCRIPTION allsub
  CONNECTION 'postgresql://latoken:latoken@master/latoken'
  PUBLICATION allpub;