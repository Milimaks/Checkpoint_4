CREATE TABLE
    `origins`.`users` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `username` VARCHAR(255) NOT NULL,
        `email` VARCHAR(255) NOT NULL UNIQUE,
        `adress` VARCHAR(255) NOT NULL,
        `city` VARCHAR(255) NOT NULL,
        `postalCode` VARCHAR(255) NOT NULL,
        `profilpic` VARCHAR(255),
        `hashedPassword` VARCHAR(255) NOT NULL,
        `isAdmin` TINYINT(1) DEFAULT 0 NOT NULL,
        PRIMARY KEY (`id`),
        UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE
    );

CREATE TABLE
    `origins`.`movie` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `title` VARCHAR(255) NOT NULL,
        `description_movie` TEXT NOT NULL,
        `trailer` VARCHAR(255),
        `publishedDate` INT NOT NULL,
        `movieImage` VARCHAR(255) NOT NULL,
        `isFavorite` TINYINT(1) DEFAULT 0 NOT NULL,
        `isAcess` TINYINT(1) DEFAULT 0 NOT NULL,
        `videoLink` VARCHAR(255) NOT NULL,
        `limit_age` INT DEFAULT 0 NOT NULL,
        `duration` VARCHAR(20),
        PRIMARY KEY (`id`),
        UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE
    );

CREATE TABLE
    `origins`.`category` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `name` VARCHAR(200) NOT NULL,
        PRIMARY KEY (`id`),
        UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE
    );

CREATE TABLE
    `origins`.`favoris` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `idUser` INT,
        `idMovie` INT,
        PRIMARY KEY (`id`),
        UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE
    );

CREATE TABLE
    `origins`.`movieCategory` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `idMovie` INT,
        `idCategory` INT,
        CONSTRAINT movieCat FOREIGN KEY (idCategory) REFERENCES category(id) ON DELETE CASCADE,
        CONSTRAINT movieCa FOREIGN KEY (idMovie) REFERENCES movie(id) ON DELETE CASCADE,
        PRIMARY KEY (`id`),
        UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE
    );

CREATE TABLE
    `origins`.`heroSlider` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `idMovie` INT NOT NULL,
        `movieImage` VARCHAR(255) NOT NULL,
        `ContentNumber` INT NOT NULL,
        PRIMARY KEY (`id`),
        UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE
    );

    INSERT INTO 
    `origins`.`heroSlider` (
        `id` ,
        `idMovie` ,
        `movieImage` ,
        `ContentNumber`)
    VALUES (
        '1', '1', 'https://res.cloudinary.com/dhudn6li6/image/upload/v1671548880/Origin/HugoCabret_drtz4y.webp', '8'
    );
    INSERT INTO 
    `origins`.`heroSlider` (
        `id` ,
        `idMovie` ,
        `movieImage` ,
        `ContentNumber`)
    VALUES (
        '2', '1', 'https://res.cloudinary.com/dhudn6li6/image/upload/v1671548880/Origin/HugoCabret_drtz4y.webp', '8'
    );
    INSERT INTO 
    `origins`.`heroSlider` (
        `id` ,
        `idMovie` ,
        `movieImage` ,
        `ContentNumber`)
    VALUES (
        '3', '1', 'https://res.cloudinary.com/dhudn6li6/image/upload/v1671548880/Origin/HugoCabret_drtz4y.webp', '8'
    );
    INSERT INTO 
    `origins`.`heroSlider` (
        `id` ,
        `idMovie` ,
        `movieImage` ,
        `ContentNumber`)
    VALUES (
        '4', '1', 'https://res.cloudinary.com/dhudn6li6/image/upload/v1671548880/Origin/HugoCabret_drtz4y.webp', '8'
    );
    INSERT INTO 
    `origins`.`heroSlider` (
        `id` ,
        `idMovie` ,
        `movieImage` ,
        `ContentNumber`)
    VALUES (
        '5', '1', 'https://res.cloudinary.com/dhudn6li6/image/upload/v1671548880/Origin/HugoCabret_drtz4y.webp', '8'
    );
    INSERT INTO 
    `origins`.`heroSlider` (
        `id` ,
        `idMovie` ,
        `movieImage` ,
        `ContentNumber`)
    VALUES (
        '6', '1', 'https://res.cloudinary.com/dhudn6li6/image/upload/v1671548880/Origin/HugoCabret_drtz4y.webp', '8'
    );
    INSERT INTO 
    `origins`.`heroSlider` (
        `id` ,
        `idMovie` ,
        `movieImage` ,
        `ContentNumber`)
    VALUES (
        '7', '1', 'https://res.cloudinary.com/dhudn6li6/image/upload/v1671548880/Origin/HugoCabret_drtz4y.webp', '8'
    );
    INSERT INTO 
    `origins`.`heroSlider` (
        `id` ,
        `idMovie` ,
        `movieImage` ,
        `ContentNumber`)
    VALUES (
        '8', '1', 'https://res.cloudinary.com/dhudn6li6/image/upload/v1671548880/Origin/HugoCabret_drtz4y.webp', '8'
    );


INSERT INTO
    `origins`.`category` (`id`, `name`)
VALUES ('1', 'Aventure');

INSERT INTO
    `origins`.`category` (`id`, `name`)
VALUES ('2', 'Horreur');

INSERT INTO
    `origins`.`category` (`id`, `name`)
VALUES ('3', 'Drame');

INSERT INTO
    `origins`.`category` (`id`, `name`)
VALUES ('4', 'Fantastique');

INSERT INTO
    `origins`.`category` (`id`, `name`)
VALUES ('5', 'Animation');

INSERT INTO
    `origins`.`category` (`id`, `name`)
VALUES ('6', 'Action');

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '1',
        'Hugo Cabret',
        'À Paris, au tournant des années 1930, Hugo Cabret, un garçon d\'une dizaine d\'années, vit humblement avec son père, horloger. Il se retrouve orphelin à la suite d\'un incendie causant la mort de ce dernier. Il se réfugie alors dans une gare, derrière les horloges qu\'il entretient. Il passe le reste de son temps à tenter de réparer l\'automate mécanique que son père cherchait à restaurer avant sa mort. Hugo est convaincu que le robot, dont la vocation est d\'écrire, renferme un ultime message de son père. Il n\'hésite pas à voler viennoiseries ou petits objets, et il est pris en flagrant délit par un vieux monsieur tenant une boutique de jouets, qui lui confisque son carnet de croquis. Hugo, en tentant de récupérer son carnet, rencontre la filleule du marchand de jouets, qui devient alors son amie.',
        'https://www.youtube.com/embed/7qBJ6yL_QMc',
        '2011',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1671548880/Origin/HugoCabret_drtz4y.webp',
        '1',
        '1',
        'https://www.youtube.com/embed/7qBJ6yL_QMc',
        '6',
        '2 h 11'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '2',
        'Harry Potter et la chambre des secrets',
        'Alors que l\'oncle Vernon, la tante Pétunia et son cousin Dudley reçoivent d\'importants invités à dîner, Harry Potter est contraint de passer la soirée dans sa chambre. Dobby, un elfe, fait alors son apparition. Il lui annonce que de terribles dangers menacent l\'école de Poudlard et qu\'il ne doit pas y retourner en septembre. Harry refuse de le croire. Mais sitôt la rentrée des classes effectuée, ce dernier se met à entendre une voix macabre. De plus, un message peint en rouge sang sur un des murs du château annonce que la redoutable et légendaire Chambre des secrets est à nouveau ouverte, permettant ainsi à l\'héritier de Serpentard de semer le chaos à Poudlard. Les victimes, retrouvées pétrifiées par une force mystérieuse, se succèdent dans les couloirs de l\'école, sans que les professeurs - pas même le populaire Gilderoy Lockhart - ne parviennent à endiguer la menace. Aidé de Ron et Hermione, Harry doit agir au plus vite pour sauver Poudlard.',
        'https://www.youtube.com/embed/5Xngrhn4seA',
        '2002',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1671548991/Origin/HPCDS_btlnvt.jpg',
        '0',
        '1',
        'https://www.youtube.com/embed/5Xngrhn4seA',
        '6',
        '2 h 14'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '3',
        'Dracula Untold',
        'L’histoire débute en 1462. La Transylvanie vit une période de calme relatif sous le règne du prince Vlad III de Valachie et de son épouse bien-aimée Mirena. Ensemble, ils ont négocié la paix et la protection de leur peuple avec le puissant Empire ottoman dont la domination ne cesse de s’étendre en Europe de l’Est. Mais quand le sultan Mehmet II demande que 1000 jeunes hommes de Valachie, dont le propre fils de Vlad, Ingeras, soient arrachés à leur famille pour venir grossir les rangs de l’armée turque, le prince doit faire un choix : abandonner son fils au sultan, comme son père l’a fait avant lui, ou faire appel à une créature obscure pour combattre les Turcs et par là même assujettir son âme à la servitude éternelle. Vlad se rend au pic de la Dent Brisée où il rencontre un abject démon et conclut un accord faustien avec lui : il acquerra la force de 100 hommes, la rapidité d’une étoile filante et les pouvoirs nécessaires pour anéantir ses ennemis, en l’échange de quoi, il sera accablé d’une insatiable soif de sang humain. S’il parvient à y résister pendant trois jours, Vlad redeviendra lui-même, et sera à même de continuer à protéger et gouverner son peuple, mais s’il cède à la tentation, il entrera le monde des ténèbres pour le restant de ses jours, condamné à se nourrir de sang humain et à perdre et détruire tout ce et ceux qui lui sont chers.',
        'https://www.youtube.com/embed/Xc23AbpwGdA',
        '2014',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1671549058/Origin/dracula_d4rgsa.jpg',
        '0',
        '1',
        'https://www.youtube.com/embed/Xc23AbpwGdA',
        '6',
        '1 h 32'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '4',
        'Big Fish',
        'L\'histoire à la fois drôle et poignante d\'Edward Bloom, un père débordant d\'imagination, et de son fils William. Ce dernier retourne au domicile familial après l\'avoir quitté longtemps auparavant, pour être au chevet de son père, atteint d\'un cancer. Il souhaite mieux le connaître et découvrir ses secrets avant qu\'il ne soit trop tard. L\'aventure débutera lorsque William tentera de discerner le vrai du faux dans les propos de son père mourant.',
        'https://www.youtube.com/embed/AEh2eRhZNkA',
        '2003',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1671549114/Origin/bfish_wzxqef.jpg',
        '1',
        '1',
        'https://www.youtube.com/embed/AEh2eRhZNkA',
        '6',
        '2 h 05'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '5',
        'L\'Étrange Histoire de Benjamin Button',
        'Curieux destin que le mien\'. Ainsi commence l\'étrange histoire de Benjamin Button, cet homme qui naquit à 80 ans et vécut sa vie à l\'envers, sans pouvoir arrêter le cours du temps. Situé à La Nouvelle-Orléans et adapté d\'une nouvelle de F. Scott Fitzgerald, le film suit ses tribulations de 1918 à nos jours.',
        'https://www.youtube.com/embed/dDyJ4pSxC20',
        '2008',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1671549162/Origin/ihdbb_egrcaf.webp',
        '1',
        '1',
        'https://www.youtube.com/embed/dDyJ4pSxC20',
        '6',
        '2 h 47'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '6',
        'La Cité de l\'ombre',
        'Quand les lumières commencent à se faner, deux adolescents (Saoirse Ronan, Harry Treadaway) doivent trouver un secret afin de sauver une ville souterraine de l\'obscurité. Les adolescents sont les seuls qui ont la puissance de sauver la ville souterraine.',
        'https://www.youtube.com/embed/YmrZpcDgTb4',
        '2008',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1671550909/Origin/lcdl_e3jbmj.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/YmrZpcDgTb4',
        '6',
        '1 h 30'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '7',
        'Le Roi Arthur : La Légende d\'Excalibur',
        'Jeune homme futé, Arthur tient les faubourgs de Londonium avec sa bande, sans soupçonner le destin qui l\'attend -- jusqu\'au jour où il s\'empare de l\'épée Excalibur et se saisit, dans le même temps, de son avenir. Arthur est aussitôt contraint de faire des choix difficiles. Rejoignant la Résistance et une mystérieuse jeune femme du nom de Guenièvre, il doit apprendre à maîtriser l\'épée, surmonter ses démons intérieurs, et unir le peuple pour vaincre un tyran.',
        'https://www.youtube.com/embed/Lg2g4WTkvJs',
        '2017',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1671551006/Origin/lra_opdgfh.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/Lg2g4WTkvJs',
        '6',
        '2 h 06'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '8',
        'Miss Peregrine et les enfants particuliers',
        'À la mort de son grand-père, Jacob découvre les indices et l\'existence d\'un monde mystérieux qui le mène dans un lieu magique: la Maison de Miss Peregrine pour enfants particuliers.',
        'https://www.youtube.com/embed/INJOMaHbgeY',
        '2017',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1671551114/Origin/mpelep_purvwc.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/INJOMaHbgeY',
        '6',
        '2 h 07'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '9',
        'Matilda',
        'Matilda Wormwood a une imagination débordante. Cependant, elle n\'a pas de chance avec ses parents, mais dévore des livres comme passe-temps. Son professeur l\'encourage à donner vie à ses propres histoires. Lorsque Matilda est admise à Crunchem Hall, elle découvre bientôt que l\'école est dirigée par la diabolique Miss Trunchbull. Heureusement, Matilda peut compter sur ses nouvelles amies d\'école, Miss Honey et la bibliothécaire Mrs. phelps.',
        'https://www.youtube.com/embed/jxvRs3044p4',
        '2022',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1672646880/Origin/images_tzagud.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/jxvRs3044p4',
        '6',
        '1 h 57'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '10',
        'Le téléphone de M. Harrigan',
        'Craig, un jeune garçon, se lie d\'amitié avec un milliardaire plus âgé, John Harrigan. Féru de nouvelles technologies, Craig souhaite transmettre sa passion à John Harrigan, qui se tient éloigné de tous les progrès technologiques. Craig lui offre alors un téléphone portable identique au sien. Cependant, quand l\'homme décède, Craig découvre qu\'il est capable de communiquer avec son ami depuis sa tombe en laissant des messages vocaux sur le portable qui a été enterré avec lui.',
        'https://www.youtube.com/embed/PocO29RYNWs',
        '2022',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1672647008/Origin/images_1_dyuivo.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/PocO29RYNWs',
        '13',
        '1 h 44'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '11',
        'A l\'ouest rien de nouveau',
        '1914, la guerre éclate en Allemagne. Paul Baumer et quelques camarades incités par leurs professeurs, s\'enrôlent très vite dans l\'armée, prêts à servir leur patrie. À peine engagés, l\'esprit volontaire fait place aux désillusions : leur instructeur, le caporal Himmelstoss, fait preuve d\'un sadisme sans faille et les premières images du champ de bataille leur jette la réalité de la guerre en plein visage.',
        'https://www.youtube.com/embed/L2dNMfQrMrM',
        '2022',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1672647134/Origin/images_2_bdmdaa.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/L2dNMfQrMrM',
        '13',
        '2 h 23'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '12',
        'Vaiana',
        'L\'aventure d\'une adolescente pleine de caractère qui part en mer pour se prouver qu\'elle a tout d\'une exploratrice et poursuivre la quête de ses ancêtres. Durant son voyage, Vaiana rencontre le demi-dieu autrefois puissant, Maui. Ensemble, ils traversent l\'océan, dans un périple plein de rebondissements et d\'humour. Ils vont parcourir des univers à couper le souffle et rencontrer d\'énormes créatures marines. Vaiana va découvrir la chose qu\'elle cherchait depuis toujours: qui elle est vraiment.',
        'https://www.youtube.com/embed/JIl74jge_Wg',
        '2016',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1672648565/Origin/images_3_kti50c.jpg',
        '1',
        '1',
        'https://www.youtube.com/embed/JIl74jge_Wg',
        '6',
        '1 h 42'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '13',
        'La princesse et la grenouille',
        'À La Nouvelle-Orléans, dans les années 1920, le prince Naveen de Maldonia est transformé en grenouille par le docteur Facilier, un terrifiant sorcier vaudou. Afin de retrouver sa forme humaine à l\'aide d\'un baiser, Naveen décide de trouver une princesse et tombe sur Tiana, qui est en fait une jeune serveuse.',
        'https://www.youtube.com/embed/usknkMx8Dk0',
        '2009',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1672648659/Origin/images_4_jnhnvj.jpg',
        '1',
        '1',
        'https://www.youtube.com/embed/usknkMx8Dk0',
        '6',
        '1 h 29'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '14',
        'Rebelle',
        'Depuis la nuit des temps, au coeur des terres sauvages et mystérieuses des Highlands d\'Écosse, récits de batailles épiques et légendes mythiques se transmettent de génération en génération.',
        'https://www.youtube.com/embed/-DzVEKgwnA0',
        '2012',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1672648752/Origin/images_5_ossj6v.jpg',
        '1',
        '1',
        'https://www.youtube.com/embed/-DzVEKgwnA0',
        '6',
        '1 h 30'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '15',
        'Warcraft',
        'Le pacifique royaume d\'Azeroth est au bord de la guerre alors que sa civilisation doit faire face à une redoutable race d\'envahisseurs : des guerriers Orcs fuyant leur monde moribond pour en coloniser un autre. Alors qu\'un portail s\'ouvre pour connecter les deux mondes, une armée fait face à la destruction et l\'autre à l\'extinction. De côtés opposés, deux héros vont s\'affronter et décider du sort de leur famille, de leur peuple et de leur patrie.',
        'https://www.youtube.com/embed/d7THxrD72eE',
        '2016',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673341703/Origin/images_3_mup8lm.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/d7THxrD72eE',
        '6',
        '2 h 03'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '16',
        'Le Sang des Templiers',
        'En 1215, le roi d\'Angleterre, Jean, a été contraint de signer la `Magna Carta\', un document qui assure la liberté du peuple et constitue désormais la base du droit commun en Angleterre. Furieux d\'y avoir été forcé, il lève une armée de mercenaires et commence à piller le pays pour reprendre le pouvoir. Il est sur le point d\'atteindre Londres et de remporter la victoire, mais un dernier obstacle se dresse encore sur sa route : le château de Rochester.',
        'https://www.youtube.com/embed/RH2qkDR1xs8',
        '2011',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673342059/Origin/images_4_xlwpht.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/RH2qkDR1xs8',
        '16',
        '2 h 01'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '17',
        'Le Chasseur et la Reine des glaces',
        'Il y a fort longtemps, bien avant qu\'elle ne tombe sous l\'épée de Blanche Neige, la reine Ravenna avait dû assister, sans mot dire, à la trahison amoureuse qui avait contraint sa soeur Freya à quitter leur royaume, le coeur brisé. Celle que l\'on appelait la jeune reine des glaces, à cause de son habilité à geler n\'importe quel adversaire, s\'employa alors des années durant à lever une armée de guerriers impitoyables, du fond de son palais glacé.',
        'https://www.youtube.com/embed/LCOs7dIw5LE',
        '2016',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673342150/Origin/images_5_ajizca.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/LCOs7dIw5LE',
        '13',
        '2 h 00'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '18',
        'Les Indestructibles 2',
        'Le gourou de la télécommunication, Winston Deavor, recrute Elastigirl pour combattre des criminels et faire en sorte que le publique retombe en amour avec les superhéros. M. Incroyable, lui, reste à la maison et fait face à son plus grand défi: s\'occuper des problèmes de ses trois enfants.',
        'https://www.youtube.com/embed/sXsr_7Una_A',
        '2018',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673342387/Origin/images_6_jcp7km.jpg',
        '1',
        '1',
        'https://www.youtube.com/embed/sXsr_7Una_A',
        '6',
        '2 h 06'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '19',
        'Time Out',
        'Bienvenue dans un monde où le temps a remplacé l\'argent. Génétiquement modifiés, les hommes ne vieillissent plus après 25 ans. A partir de cet âge, il faut gagner du temps pour rester en vie. Alors que les riches, jeunes et beaux pour l\'éternité, accumulent le temps par dizaines d\'années, les autres mendient, volent et empruntent les quelques heures qui leur permettront d\'échapper à la mort. Un homme, accusé à tort de meurtre, prend la fuite avec une otage qui deviendra son alliée.',
        'https://www.youtube.com/embed/bVZsx_a488w',
        '2011',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673342515/Origin/images_7_f7huf7.jpg',
        '0',
        '1',
        'https://www.youtube.com/embed/bVZsx_a488w',
        '13',
        '1 h 49'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '20',
        'Tarzan',
        'Cela fait presque dix ans que Tarzan, connu aussi du nom de John Clayton III, a quitté l\'Afrique pour vivre en Angleterre victorienne avec sa femme bien-aimée Jane. Le danger, par contre, arrive. Leon Rom, l\'envoi sinistre du roi Léopold, attire Tarzan au Congo afin de le livrer à un vieil ennemi.',
        'https://www.youtube.com/embed/3pwUsilvTUA',
        '2015',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673342847/Origin/images_8_wwsvfb.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/3pwUsilvTUA',
        '13',
        '1 h 50'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '21',
        'Là-haut',
        'Quand Carl, un grincheux de 78 ans, décide de réaliser le rêve de sa vie en attachant des milliers de ballons à sa maison pour s\'envoler vers l\'Amérique du Sud, il ne s\'attendait pas à embarquer avec lui Russell, un jeune explorateur de neuf ans, toujours très enthousiaste et assez envahissant.',
        'https://www.youtube.com/embed/p-TdCD6DBfM',
        '2009',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673343010/Origin/images_9_d3dlvk.jpg',
        '1',
        '1',
        'https://www.youtube.com/embed/p-TdCD6DBfM',
        '6',
        '1 h 36'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '22',
        'Coco',
        'Malgré le fait que sa famille ait banni la musique depuis des générations, Miguel rêve de devenir un musicien accompli comme son idole Ernesto de la Cruz. Désespéré de prouver son talent et suite à une mystérieuse série d\'événements, Miguel se retrouve dans le coloré et éblouissant territoire des morts.',
        'https://www.youtube.com/embed/aTaW-HtvkQo',
        '2017',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673343057/Origin/images_10_n6lerr.jpg',
        '0',
        '1',
        'https://www.youtube.com/embed/aTaW-HtvkQo',
        '6',
        '1 h 45'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '23',
        'Ratatouille',
        'Rémy n\'est pas un jeune rat comme les autres. Il a un véritable don, celui de cuisiner, marier les saveurs, découvrir de nouveaux arômes et un rêve : devenir un grand chef et le premier rat de goût. Il est prêt à tout pour vivre sa passion, notamment venir s\'installer avec sa famille sous les cuisines d\'un des plus grands restaurants parisiens : celui d\'Auguste Gusteau, la star des fourneaux.',
        'https://www.youtube.com/embed/KpiDM6I4x_Q',
        '2007',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673343169/Origin/images_11_e910vf.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/KpiDM6I4x_Q',
        '6',
        '1 h 51'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '24',
        'Sinister',
        '\nAuteur de romans policiers, Ellison Oswalt s\'inspire de faits réels pour ses histoires. En panne sèche, pour trouver l\'inspiration, il décide de s\'installer avec sa famille dans une maison dont les anciens résidents et propriétaires ont été retrouvés pendus. Un fait divers non élucidé. Un jour, alors qu\'il fait du rangement dans le grenier, il découvre des bobines 8 mm. Sur celles-ci, les images de meurtres de plusieurs familles.',
        'https://www.youtube.com/embed/Iij6TmVCcFw',
        '2012',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673344586/Origin/images_13_izlxj9.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/Iij6TmVCcFw',
        '12',
        '1 h 50'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '25',
        'L\'Exorcisme d\'Emily Rose',
        'Convaincue d\'être possédée par le diable, une jeune étudiante fait appel à un prêtre pour l\'exorciser. Mais pendant ce combat, la jeune fille trouve la mort et le prêtre est alors accusé d\'homicide. Ce dernier se retrouve alors au coeur d\'un procès qui va ébranler les convictions de tous.',
        'https://www.youtube.com/embed/Z4B8h4MnzKs',
        '2005',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673344797/Origin/Exorcisme-dEmily-Rose-poster_douqag.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/Z4B8h4MnzKs',
        '12',
        '1 h 59'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '26',
        'Possédée',
        'Depuis la séparation de leurs parents, Clyde et Stephanie Brenek, survenue un an plus tôt, Em et Hannah passent la semaine chez leur mère et le week-end chez leur père. Ce dernier achète un petit coffre ancien dans un vide-grenier et l\'offre à Em, la plus jeune. Peu après, Em observe chez elle d\'inquiétantes transformations physiques et se montre de plus en plus violente.',
        'https://www.youtube.com/embed/bXIotJeP3bI',
        '2012',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673345085/Origin/images_14_etxowh.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/bXIotJeP3bI',
        '12',
        '1 h 32'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '27',
        'Black phone',
        'Finney Shaw est un garçon timide, mais intelligent qui est détenu dans un sous-sol insonorisé par un tueur sadique et masqué. Lorsqu\'un téléphone débranché sur le mur se met à sonner, il découvre bientôt qu\'il peut entendre les voix des précédentes victimes du meurtrier et ils sont déterminés à s\'assurer que ce qui leur est arrivé n\'arrive pas à Finney.',
        'https://www.youtube.com/embed/KF72P2Ews2A',
        '2021',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673345267/Origin/images_15_d6sj0z.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/KF72P2Ews2A',
        '12',
        '1 h 42'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '28',
        'You Won\'t Be Alone\nYou Won\'t Be Alone\nYou Won\'t Be Alone\nYou Won\'t Be Alone\nYou Won\'t Be Alone',
        'Dans la Macédoine du XIXe siècle, une jeune fille est enlevée puis transformée en sorcière par un esprit ancien. Curieuse de la vie en tant qu\'humain, la sorcière tue accidentellement un paysan du village voisin et prend alors la forme de sa victime pour vivre dans sa peau.',
        'https://www.youtube.com/embed/UEavDql3F1M',
        '2022',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673345378/Origin/images_16_awvfzd.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/UEavDql3F1M',
        '12',
        '1 h 49'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '29',
        'Délivre-nous du mal',
        'À New York, le policier Ralph Sarchie enquête sur une série de crimes. Il s\'associe avec un prêtre non conventionnel, spécialisé dans les rituels d\'exorcisme. Tous deux vont lutter contre les possessions qui terrorisent leur ville.',
        'https://www.youtube.com/embed/Q0Uq8ceEVR0',
        '2014',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673345497/Origin/images_17_xaca4a.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/Q0Uq8ceEVR0',
        '12',
        '1 h 58'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '30',
        'L\'École du bien et du mal',
        'Sophie et Agatha sont meilleures amies. Elles sont destinées à intégrer l\'école du bien pour la première avec Cendrillon et Blanche-Neige, et l\'école du mal pour la seconde. Cependant, à la suite d\'un sort, leur destinée respective va basculer et leur amitié sera mise à rude épreuve.',
        'https://www.youtube.com/embed/SLUfpygi2sk',
        '2022',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673346183/Origin/images_18_fso0q0.jpg',
        '0',
        '1',
        'https://www.youtube.com/embed/SLUfpygi2sk',
        '6',
        '2 h 27'
    );

INSERT INTO
    `origins`.`movie` (
        `id`,
        `title`,
        `description_movie`,
        `trailer`,
        `publishedDate`,
        `movieImage`,
        `isFavorite`,
        `isAcess`,
        `videoLink`,
        `limit_age`,
        `duration`
    )
VALUES (
        '31',
        'Le monde de Narnia 1',
        'Grâce à ses sombres pouvoirs, la Sorcière Blanche a plongé Narnia dans un hiver qui dure depuis un siècle, mais une prédiction révèle que quatre enfants aideront Aslan à rompre la malédiction. Lorsque Lucy, Susan, Edmund et Peter Pevensie, quatre frères et soeurs, découvrent ce monde enchanté en y pénétrant à travers une armoire, tout est en place pour une bataille de proportions épiques.',
        'https://www.youtube.com/embed/ztFix1KQmSI',
        '2005',
        'https://res.cloudinary.com/dhudn6li6/image/upload/v1673346313/Origin/images_19_iuh6gd.jpg',
        '0',
        '0',
        'https://www.youtube.com/embed/ztFix1KQmSI',
        '6',
        '2 h 30'
    );

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('1', '1', '1');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('2', '2', '1');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('3', '3', '2');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('4', '4', '3');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('5', '5', '4');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('6', '6', '1');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('7', '7', '1');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('8', '8', '1');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('9', '9', '4');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('10', '10', '2');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('11', '11', '3');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('12', '12', '5');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('13', '13', '5');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('14', '14', '5');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('15', '15', '6');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('16', '16', '6');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('17', '17', '4');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('18', '18', '5');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('19', '19', '6');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('20', '20', '1');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('21', '21', '5');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('22', '22', '5');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('23', '23', '5');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('24', '24', '2');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('25', '25', '2');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('26', '26', '2');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('27', '27', '2');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('28', '28', '2');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('29', '29', '2');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('30', '30', '4');

INSERT INTO
    `origins`.`movieCategory` (`id`, `idMovie`, `idCategory`)
VALUES ('31', '31', '4');