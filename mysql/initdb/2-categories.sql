create table categories(                                                                                                                                                     
    id integer unsigned auto_increment primary key,                                                                                                                              
    name varchar(30) not null,                                                                                                                                                   
    created datetime,                                                                                                                                                            
    modified datetime);         


alter table posts add column category_id integer unsigned after body;
