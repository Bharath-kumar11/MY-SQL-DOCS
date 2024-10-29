use bharath;

show index from employee2;

create index name_index on employee(emname);

drop index name_index on employee;

create index name_index on employee2(emname);

show index from employee;


--- the purpose of using an index is to get a result faster 
---- while handling multiple tables and millions of data


