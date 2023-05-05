use join_test_db;

select users.name as user_name, roles.name as role_name
from users
join roles on users.role_id = roles.id;

select users.name as user_name, roles.name as role_name
from users
left join roles on users.role_id = roles.id;

select distinct roles.name, count(roles.name) as number_of
from roles
    join users u on roles.id = u.role_id
group by roles.name;
