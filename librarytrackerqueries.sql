-- Task 3ai - Retrieve all books in the library, sorted by their title.

select *
from books
order by title;


-- Task 3aii - Retrieve all members who joined after a specific date.

select *
from members m 
where membership_date > '2024-01-01';


-- Task 3bi - Find all books by a specific author.
select * 
from books 
where author = 'Chimamanda Ngozi Adichie';


-- Task 3bii - Find all books currently available for borrowing.
select * 
from books books 
where available_copies > 0;


-- Task 3ci - Retrieve borrowing records with member names and book titles.

select br.record_id,  m.name, b.title, br.borrow_date, br.return_date
from borrow_records br 
join books b on b.book_id = br.book_id
join members m on m.member_id = br.member_id;


-- Task 3cii - Find which members have not yet returned their books.
select m.name, b.title
from borrow_records br 
join books b on b.book_id = br.book_id
join members m on m.member_id = br.member_id
where br.return_date is null;


-- Task 3di - Count the total number of books in the library.
select count(1) as total_books
from books;


-- Task 3dii - Find the most borrowed book.
select b.title, count(br.book_id) as borrow_count
from borrow_records br 
join books b on b.book_id = br.book_id
group by b.title
order by borrow_count desc
limit 1;


-- Task 4ai - Update the available copies of a book after it has been borrowed or returned.

-- Update available copies of a book when borrowed
update books
set available_copies =available_copies - 1
where book_id = 1;


-- Update available copies of a book when returned
update books 
set available_copies = available_copies + 1
where book_id = 1;

-- delete a member’s record
delete from members
where email = 'grace.olamide@example.com';


-- Task 5a - Retrieve the top 3 members who have borrowed the most books.
select m.name, count(br.record_id) as borrow_count
from members m 
join borrow_records br on m.member_id = br.member_id
group by m.name 
order by borrow_count desc
limit 3;

-- Task 5aii - Find all books that have not been borrowed.
select b.title
from books b
left join borrow_records br on b.book_id = br.book_id
where br.book_id is null;



