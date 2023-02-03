create database BookCompany;

use BookCompany;

create table Book
(
    id       int unsigned auto_increment primary key,
    BookName varchar(100) not null,
    authors  json         not null,
    year     date         not null
);

SELECT id,
       BookName,
       year,
       JSON_UNQUOTE(JSON_EXTRACT(authors, '$[*].name'))     AS Name,
       JSON_UNQUOTE(JSON_EXTRACT(authors, '$[*].position')) AS position
FROM Book
where authors like '%Sardor%';

insert into Book(BookName, authors, year)
VALUES ('Tail 4', '[
  {
    "name": "Sardor 1",
    "position": "2"
  },
  {
    "name": "Sardor 1",
    "position": "2"
  }
]', '2022-11-11');

select *
from BookCompany.Book;

drop table Book;
