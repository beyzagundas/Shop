insert into Employee(id, name, position, manager_id) values(71, 'Sevil Çetin', 'hr', null)
insert into Employee(id, name, position, manager_id) values(72, 'Caner Koray', 'sr', null)
insert into Employee(id, name, position, manager_id) values(73, 'Zeynep Günal', 'managemer', null)

update Employee set manager_id=73 where id=72
