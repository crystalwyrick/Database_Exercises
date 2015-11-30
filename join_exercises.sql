INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id) VALUES
('rhonda', 'rhonda@example.com', 2),
('jessica', 'jessica@example.com', 3),
('robert', 'robert@example.com', 2),
('olivia', 'olivia@example.com', 1);

SELECT u.name AS user_name, r.name AS role 
FROM users AS u
LEFT JOIN roles AS r ON u.role_id = r.id;

SELECT r.name, COUNT (u.name) AS number_of_users 
FROM users as u
JOIN roles AS r ON u.role_id = r.id
GROUP BY r.name;	

SELECT CONCAT(d.dept_name, ' - ', e.first_name, ' ', e.last_name) AS 'Department Manager List'
FROM departments AS d
JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
JOIN employees AS e 
	ON dm.emp_no = e.emp_no  
WHERE dm.to_date > now();














