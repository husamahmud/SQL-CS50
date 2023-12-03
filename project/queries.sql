-->> SELECT statements

-- Retrieve all books
SELECT *
FROM books;

-- Retrieve books by a specific author
SELECT *
FROM books
WHERE author_id = 1;

-- Retrieve available books for loan
SELECT *
FROM books
WHERE id NOT IN (SELECT book_id FROM loans WHERE return_date IS NULL);

-- Retrieve members with overdue books
SELECT members.*, books.name AS book_name, loans.due_date
FROM members
         JOIN loans ON members.id = loans.member_id
         JOIN books ON loans.book_id = books.id
WHERE loans.due_date < CURDATE()
  AND loans.return_date IS NULL;

-->> INSERT statements

-- Add a new book
INSERT INTO books (name, author_id, publication_date, ISBN, genre, description)
VALUES ('The Great Gatsby', 2, '2021-05-15', '9781234567890', 1, 'A classic novel by F. Scott Fitzgerald.');

-- Add a new member
INSERT INTO members (name, email, phone, address, member_status)
VALUES ('John Doe', 'john@example.com', '123-456-7890', '123 Main St, Anytown', 'Active');

-->> UPDATE statements

-- Update the status of a member
UPDATE members
SET member_status = 'Inactive'
WHERE id = 1;

-- Update the due date of a loan
UPDATE loans
SET due_date = '2023-12-10'
WHERE id = 1;

-->> DELETE statements

-- Delete a book
DELETE
FROM books
WHERE id = 1;

-- Delete a member
DELETE
FROM members
WHERE id = 1;
