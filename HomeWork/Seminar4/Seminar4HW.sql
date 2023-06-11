/* Task 1. Подсчитать количество групп (сообществ), в которые вступил каждый пользователь. */
select 
	CONCAT(firstname, ' ', lastname) AS owner,
	count(*)
from users u
join users_communities uc on u.id = uc.user_id
group by u.id
order by count(*) DESC

/* Task 2. Подсчитать количество пользователей в каждом сообществе.*/
select
	count(*),
	communities.name
from users_communities 
join communities on users_communities.community_id = communities.id
group by communities.id

/* Task 3. Пусть задан некоторый пользователь.
 * Из всех пользователей соц. сети найдите человека,
 * который больше всех общался с выбранным пользователем (написал ему сообщений).*/
select 
	from_user_id
	, concat(u.firstname, ' ', u.lastname) as name
	, count(*) as 'messages count'
from messages m
join users u on u.id = m.from_user_id
where to_user_id = 1
group by from_user_id
order by count(*) desc
limit 1;