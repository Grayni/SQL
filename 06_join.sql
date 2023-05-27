USE vk;

-- candidate => user_id = 1


-- 1
SELECT  u.id, u.firstname, u.lastname, COUNT(m.id) AS message_count
FROM users u
-- filter user_1 -> target_user_id, user_1 <- initiator_user_id
LEFT JOIN friend_requests fr
	ON (fr.initiator_user_id, fr.target_user_id) IN ((1, u.id), (u.id, 1))
-- filter user_1 -> to_user_id, user_1 <- from_user_id
LEFT JOIN messages m
	ON (m.from_user_id, m.to_user_id) IN ((1, u.id), (u.id, 1))
-- filter status 'approved'
WHERE fr.status = 'approved'
-- grouping by id, firstname, lastname
GROUP BY u.id, u.firstname, u.lastname
ORDER BY message_count DESC
LIMIT 1;
-- result: 4 | Norene | West | 3


-- 2
-- count media_id in likes WHERE owners < 12 years old
SELECT COUNT(*) AS likes FROM likes l
LEFT JOIN media m ON l.media_id = m.id
LEFT JOIN profiles p ON m.user_id = p.user_id
WHERE FLOOR(DATEDIFF(CURDATE(), p.birthday) / 365.25) < 12;
-- result: 4


-- 3
-- count of women
SELECT 'women' AS gender, COUNT(*) AS count FROM likes lw
LEFT JOIN profiles pw ON pw.user_id = lw.user_id
WHERE pw.gender = 'f'

UNION ALL -- combine requests without filter 'unique'

-- count of men
SELECT 'men' AS gender, COUNT(*) AS count FROM likes lm
LEFT JOIN profiles pm ON pm.user_id = lm.user_id
WHERE pm.gender = 'm'
-- add if output result
ORDER BY count DESC
LIMIT 1;
-- result: women | 16










