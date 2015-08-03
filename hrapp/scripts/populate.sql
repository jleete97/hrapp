insert into hrschema.period (name) values ('2004');
insert into hrschema.period (name) values ('2005');
insert into hrschema.period (name) values ('2006');
insert into hrschema.period (name) values ('2007');
insert into hrschema.period (name) values ('2008');
insert into hrschema.period (name) values ('2009');
insert into hrschema.period (name) values ('2010');
insert into hrschema.period (name) values ('2011');
insert into hrschema.period (name) values ('2012');
insert into hrschema.period (name) values ('2013');
insert into hrschema.period (name) values ('2014');
insert into hrschema.period (name) values ('2015');
insert into hrschema.period (name) values ('2016');

insert into hrschema.employee (firstname, lastname, type, title)
  values ('Alice', 'Adams', 'RF', 'RF');
insert into hrschema.employee (firstname, lastname, type, title)
  values ('Bob', 'Bigby', 'RF', 'RF');
insert into hrschema.employee (firstname, lastname, type, title)
  values ('Christine', 'Cable', 'PM', 'PM');
insert into hrschema.employee (firstname, lastname, type, title)
  values ('Doug', 'Door', 'RF', 'RF');
insert into hrschema.employee (firstname, lastname, type, title)
  values ('Elsa', 'Edsel', 'RF', 'RF');
insert into hrschema.employee (firstname, lastname, type, title)
  values ('Frank', 'Francis', 'PM', 'PM');
insert into hrschema.employee (firstname, lastname, type, title)
  values ('Gina', 'Gregory', 'PD', 'PD');
insert into hrschema.employee (firstname, lastname, type, title)
  values ('Harold', 'Hood', 'VP', 'VP');
insert into hrschema.employee (firstname, lastname, type, title)
  values ('Inga', 'Islas', 'RF', 'RF');

update hrschema.employee set boss =
  (select id from hrschema.employee where firstname = 'Christine')
where firstname in ('Alice', 'Bob');
update hrschema.employee set boss =
  (select id from hrschema.employee where firstname = 'Frank')
where firstname in ('Christine', 'Doug');
update hrschema.employee set boss =
  (select id from hrschema.employee where firstname = 'Gina')
where firstname in ('Christine', 'Frank');
update hrschema.employee set boss =
  (select id from hrschema.employee where firstname = 'Harold')
where firstname in ('Gina');
