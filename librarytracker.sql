-- Create Database

create database librarytracker_db;



-- Create Tables 

-- Create Table Books

create table books(
    book_id SERIAL primary key,
    title VARCHAR(255) not null,
    author VARCHAR(255),
    genre VARCHAR(50),
    published_year INT,
    available_copies INT not null check (available_copies >= 0)
);


-- Create Table Members

create table members (
	member_id SERIAL primary key,
    name VARCHAR(100) not null,
    email VARCHAR(100) unique not null,
    phone_number VARCHAR(15),
    membership_date DATE default current_date 
);


-- Create Borrowed Records

create table borrow_records (
	record_id SERIAL primary key,
    member_id INT not null,
    book_id INT not null,
    borrow_date DATE not null,
    return_date DATE,
     
    foreign key (member_id) references members(member_id) on delete cascade,
    foreign key (book_id) references books(book_id) on delete cascade
);


-- Insert Into Tables 

-- Insert Data Into Books Table
insert into books (title, author, genre, published_year, available_copies) values
('Things Fall Apart', 'Chinua Achebe', 'Fiction', 1958, 5),
('Half of a Yellow Sun', 'Chimamanda Ngozi Adichie', 'Historical Fiction', 2006, 3),
('Purple Hibiscus', 'Chimamanda Ngozi Adichie', 'Coming-of-age', 2003, 2),
('Born a Crime', 'Trevor Noah', 'Autobiography', 2016, 4),
('The Alchemist', 'Paulo Coelho', 'Adventure', 1988, 6),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 7),
('1984', 'George Orwell', 'Dystopian', 1949, 1),
('A Brief History of Time', 'Stephen Hawking', 'Science', 1988, 2),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Non-Fiction', 2011, 5),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925, 3);


-- Insert Data Into Members Table
insert into members (name, email, phone_number, membership_date) values
('Adaobi Okafor', 'adaobi.okafor@example.com', '08031234567', '2023-06-15'),
('John Adewale', 'john.adewale@example.com', '08051234567', '2023-08-02'),
('Fatima Bello', 'fatima.bello@example.com', '07081234567', '2024-01-10'),
('Chinedu Nwosu', 'chinedu.nwosu@example.com', '08161234567', '2024-03-22'),
('Grace Olamide', 'grace.olamide@example.com', '09091234567', '2024-04-05');

-- Insert Data Into Borrowed Records Table
INSERT INTO borrow_records (member_id, book_id, borrow_date, return_date) VALUES
(1, 3, '2024-03-10', '2024-03-20'),
(2, 5, '2024-04-01', '2024-04-12'),
(3, 1, '2024-04-05', NULL),
(4, 2, '2024-04-07', NULL),
(5, 4, '2024-04-10', '2024-04-17'),
(1, 6, '2024-04-12', NULL),
(2, 8, '2024-04-15', NULL),
(3, 7, '2024-04-16', '2024-04-22'),
(4, 9, '2024-04-18', NULL),
(5, 10, '2024-04-20', NULL);

