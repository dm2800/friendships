USE friendships_schema;

SELECT * from friendships;

INSERT INTO users (first_name, last_name, created_at, updated_at)
VALUES('Amy', 'Giver', NOW(), NOW());

Select * FROM users;

INSERT INTO users (first_name, last_name, created_at, updated_at)
VALUES('Marky', 'Mark', NOW(), NOW()), ('Big', 'Bird', NOW(), NOW());

SELECT * FROM users; 

INSERT INTO users (id, first_name, last_name, created_at, updated_at)
VALUES(2, 'Eli', 'Byers', NOW(), NOW());

INSERT INTO users (first_name, last_name, created_at, updated_at)
VALUES('Kermit', 'The Frog', NOW(), NOW()), ('Michael', 'Jordan', NOW(), NOW());

-- 
SELECT * FROM users;


INSERT INTO friendships (user_id, friend_id)
VALUES (1,2), (1,4), (1,6), (2,1), (2,3), (2,5), (3,2), (3,5), (4,3), (5,1), (5,6), (6,2), (6,3); 


SELECT * FROM friendships;

SELECT users.first_name, users.last_name, users2.first_name as friend_first_name, users2.last_name as friend_last_name FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id;


SELECT users2.first_name as first_name, users2.last_name as last_name, users.first_name as friends_with FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id
WHERE users.id = 1;


SELECT COUNT(*) as total_friendships from friendships;


SELECT user_id, users.first_name, users.last_name, count(user_id) as num_of_friends from friendships
JOIN users ON users.id = friendships.user_id
GROUP BY user_id
ORDER BY num_of_friends DESC;

SELECT users2.first_name as first_name, users2.last_name as last_name, users.first_name as friends_with FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id
WHERE users.id = 3
ORDER BY first_name;






