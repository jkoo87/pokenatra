DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS pokemons;



create table trainers (
  id SERIAL PRIMARY KEY,
  name varchar,
  photo_url varchar,
  nationality varchar
);

create table pokemons (
  id SERIAL PRIMARY KEY,
  name varchar,
  poke_type varchar,
  cp integer,
  img_url varchar,
  trainer_id INTEGER
);
