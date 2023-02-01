CREATE TABLE
    `checkpoint4`.`users` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `name` VARCHAR(255) NOT NULL,
        `score` VARCHAR(255),
        PRIMARY KEY (`id`),
        UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE
    );

INSERT INTO
    `checkpoint4`.`users` (`id`, `name`, `score`)
VALUES ('1', 'Al456', '3500');

INSERT INTO
    `checkpoint4`.`users` (`id`, `name`, `score`)
VALUES ('2', 'Max456', '1400');

INSERT INTO
    `checkpoint4`.`users` (`id`, `name`, `score`)
VALUES ('3', 'Bernard', '1');

INSERT INTO
    `checkpoint4`.`users` (`id`, `name`, `score`)
VALUES ('4', 'Léon Timmer', '999');

INSERT INTO
    `checkpoint4`.`users` (`id`, `name`, `score`)
VALUES ('5', 'Rémy Bernardo', '666');

INSERT INTO
    `checkpoint4`.`users` (`id`, `name`, `score`)
VALUES ('6', 'Elodeal', '0');

INSERT INTO
    `checkpoint4`.`users` (`id`, `name`, `score`)
VALUES (
        '7',
        'ChaChalaChachatte',
        '1000'
    );

INSERT INTO
    `checkpoint4`.`users` (`id`, `name`, `score`)
VALUES ('8', 'Kiki', '68');

INSERT INTO
    `checkpoint4`.`users` (`id`, `name`, `score`)
VALUES ('9', 'Bambi23', '2');

INSERT INTO
    `checkpoint4`.`users` (`id`, `name`, `score`)
VALUES ('10', 'Aladin', '5');