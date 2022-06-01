DROP TABLE IF EXISTS pokemon;

DROP TABLE IF EXISTS pokemon_sprites;

CREATE TABLE pokemon(
    id INTEGER PRIMARY KEY,
    name TEXT UNIQUE
);

CREATE TABLE pokemon_sprites(
    id INTEGER PRIMARY KEY,
    front_default TEXT UNIQUE
);

INSERT into
    pokemon(id, name)
VALUES
    (1, 'bulbasaur');

INSERT into
    pokemon(id, name)
VALUES
    (2, 'ivysaur');

INSERT into
    pokemon(id, name)
VALUES
    (3, 'venusaur');

INSERT into
    pokemon(id, name)
VALUES
    (4, 'charmander');

INSERT into
    pokemon(id, name)
VALUES
    (5, 'charmeleon');

INSERT into
    pokemon(id, name)
VALUES
    (6, 'charizard');

INSERT into
    pokemon(id, name)
VALUES
    (7, 'squirtle');

INSERT into
    pokemon(id, name)
VALUES
    (8, 'wartortle');

INSERT into
    pokemon(id, name)
VALUES
    (9, 'blastoise');

INSERT into
    pokemon(id, name)
VALUES
    (10, 'caterpie');

INSERT into
    pokemon(id, name)
VALUES
    (11, 'metapod');

INSERT into
    pokemon(id, name)
VALUES
    (12, 'butterfree');

INSERT into
    pokemon(id, name)
VALUES
    (13, 'weedle');

INSERT into
    pokemon(id, name)
VALUES
    (14, 'kakuna');

INSERT into
    pokemon(id, name)
VALUES
    (15, 'beedrill');

INSERT into
    pokemon(id, name)
VALUES
    (16, 'pidgey');

INSERT into
    pokemon(id, name)
VALUES
    (17, 'pidgeotto');

INSERT into
    pokemon(id, name)
VALUES
    (18, 'pidgeot');

INSERT into
    pokemon(id, name)
VALUES
    (19, 'rattata');

INSERT into
    pokemon(id, name)
VALUES
    (20, 'raticate');

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        1,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        2,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        3,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        4,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        5,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        6,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        7,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        8,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        9,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        10,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        11,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        12,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        13,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/13.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        14,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/14.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        15,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/15.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        16,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/16.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        17,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/17.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        18,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/18.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        19,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/19.png'
    );

INSERT into
    pokemon_sprites(id, front_default)
VALUES
    (
        20,
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/20.png'
    );