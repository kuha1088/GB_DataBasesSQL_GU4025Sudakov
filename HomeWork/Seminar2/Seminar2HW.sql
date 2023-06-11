/* Task 1. Создать БД vk, исполнив скрипт _vk_db_creation.sql (в материалах к уроку)*/

/* Task 2. Написать крипт, добавляющий в БД vk, 2-3 новые таблицы
(с перечнем полей, указанием индексов и внешних ключей) (CREATE TABLE)*/

DROP TABLE IF EXISTS `pets`;
CREATE TABLE `pets` (
	`id` SERIAL,
	`name` varchar(255),
	`pet_type_name` varchar(255),
    `user_id` BIGINT UNSIGNED NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

ALTER TABLE profiles ADD COLUMN pet_id BIGINT UNSIGNED NOT NULL ;
ALTER TABLE profiles ADD CONSTRAINT profiles FOREIGN KEY (pet_id) REFERENCES pets(id)

DROP TABLE IF EXISTS `places`;
CREATE TABLE `places` (
	id SERIAL,
	`album_id` BIGINT unsigned,
	`media_id` BIGINT unsigned NOT NULL,
	`name` varchar(255),

	FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

ALTER TABLE profiles ADD COLUMN place_id BIGINT UNSIGNED NOT NULL ;
ALTER TABLE profiles ADD CONSTRAINT profiles FOREIGN KEY (place_id) REFERENCES places(id)

/* Task 3. Заполнить 2 таблицы БД vk данными (до 10 записей в каждой таблице).*/
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('1', 'Павел', 'Пестель', 'fire@yandex.ru', '+79116645465');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('2', 'Кондратий', 'Рылеев', 'water@mail.ru', '+79314442346');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('3', 'Сергей', 'Муравьев-Апостол', 'watermellon@gmail.com', '+79113045242');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('4', 'Михаил', 'Бестужев-Рюмин', 'carrot@gmail.com', '+79066648968');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('5', 'Петр', 'Каховский', 'cake@yandex.ru', '+79058007676');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('6', 'Сергей', 'Трубецкой', 'potato@yandex.ru', '+79058053366');

INSERT INTO `pets` (`id`, `name`, `pet_type_name`) VALUES ('1', 'Шарик', 'собака');
INSERT INTO `pets` (`id`, `name`, `pet_type_name`) VALUES ('2', 'Тревор', 'черепаха');
INSERT INTO `pets` (`id`, `name`, `pet_type_name`) VALUES ('3', 'Матроскин', 'кошка');
INSERT INTO `pets` (`id`, `name`, `pet_type_name`) VALUES ('4', 'Кекс', 'собака');
INSERT INTO `pets` (`id`, `name`, `pet_type_name`) VALUES ('5', 'Рава', 'собака');
INSERT INTO `pets` (`id`, `name`, `pet_type_name`) VALUES ('6', 'Кеша', 'попугай');



