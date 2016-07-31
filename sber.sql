-- ����������� ���������� �������
 
-- 1. ����� ������ �� �����:
select s.sys_name
from dictionary d, system s
where d.code in ('SYSTEM_OUT', 'SYSTEM_IN')
and d.sysid = s.id
 
-- 2. ��������� ���������� ��������� �� ������ �������:
select s.sys_name, count(*) as mesqty
from dictionary d, system s, messages m
where d.code in ('SYSTEM_OUT', 'SYSTEM_IN')
and d.sysid = s.id
and s.id = m.sysid
group by s.sys_name
order by s.sys_name

-- 3. ���� msg ����� ������. ���������� ������ ����� �����:
select s.sys_name, (select count(*) from message m where m.sysid = s.id) as msg_qty
from Dictionary d, system s
where d.code in ('SYSTEM_OUT', 'SYSTEM_IN')
and d.sysid = s.id
