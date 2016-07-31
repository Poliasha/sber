-- ступенчатое построение запроса 
 
-- 1. имена систем по кодам:
select s.sys_name
from dictionary d, system s
where d.code in ('SYSTEM_OUT', 'SYSTEM_IN')
and d.sysid = s.id
 
-- 2. добавляем количество сообщений по каждой системе:
select s.sys_name, count(*) as mesqty
from dictionary d, system s, messages m
where d.code in ('SYSTEM_OUT', 'SYSTEM_IN')
and d.sysid = s.id
and s.id = m.sysid
group by s.sys_name
order by s.sys_name

-- 3. если msg будет пустой. Правильный запрос будет такой:
select s.sys_name, (select count(*) from message m where m.sysid = s.id) as msg_qty
from Dictionary d, system s
where d.code in ('SYSTEM_OUT', 'SYSTEM_IN')
and d.sysid = s.id
