-- 1. Выведите общее количество напечатанных страниц каждым сотрудником
select staff_id, SUM(count_pages) from activity_staff
group by staff_id;

-- 2. Посчитайте количество страниц за каждый день
select date_activity, SUM(count_pages) from activity_staff
group by date_activity;

-- 3. Найдите среднее арифметическое по количеству ежедневных страниц
select date_activity, AVG(count_pages) from activity_staff
group by date_activity;

/* Сгруппируйте данные о сотрудниках по возрасту: 
1 группа – младше 20 лет
2 группа – от 20 до 40 лет
3 группа – старше  40 лет 
Для каждой группы  найдите суммарную зарплату */

select
CASE
when age < 20 then 'Group1'
when age >= 20 and age < 40 then 'Group2'
else 'Group3'
end as Categories,
SUM(salary)
from staff
group by Categories
order by Categories;

-- 1. Выведите id сотрудников, которые напечатали более 500 страниц за всех дни
select staff_id, SUM(count_pages)
from activity_staff
group by staff_id
having SUM(count_pages) > 500;

-- 2.  Выведите  дни, когда работало более 3 сотрудников Также укажите кол-во сотрудников, которые работали в выбранные дни.
select date_activity, COUNT(staff_id)
from activity_staff
group by date_activity
having COUNT(staff_id) > 3;

-- 3. Выведите среднюю заработную плату по должностям, которая составляет более 30000
select post, AVG(salary)
from staff
group by post
having AVG(salary) > 30000;
