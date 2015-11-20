USE codeup_test_db;

SELECT name AS 'All albums by Pink Floyd:'
FROM albums 
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year Thriller was released:' 
FROM albums 
WHERE name = 'Thriller';

SELECT name AS 'Albums in the disco genre:'
FROM albums 
WHERE genre = 'disco';

SELECT name AS 'Albums released in the 1990s:'
FROM albums 
WHERE release_date BETWEEN 1989 AND 2000;

SELECT name AS 'Albums with less than 30 million in certified sales:' 
FROM albums 
WHERE  sales < 30;

SELECT name AS 'All albums in the rock genre:'
FROM albums 
WHERE genre like '%rock%';


