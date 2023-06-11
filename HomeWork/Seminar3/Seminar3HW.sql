/* Task 1. Написать скрипт, возвращающий список имен (только firstname) пользователей
 * без повторений в алфавитном порядке. */
SELECT DISTINCT firstname
FROM users
ORDER BY firstname;

/* Task 2. Выведите количество мужчин старше 35 лет. */
SELECT *
FROM profiles 
WHERE 
     TIMESTAMPDIFF(YEAR, birthday, NOW()) > 35
     AND gender = 'm'
     
/* Task 3. Сколько заявок в друзья в каждом статусе? (таблица friend_requests). */
     SELECT 
	COUNT(*),
	status
FROM friend_requests 
GROUP BY status