USE vk;

-- candidate => user_id = 1


-- 1
SELECT -- id, fname, lname, count mes
	u.id, u.firstname, u.lastname, (
	SELECT COUNT(*)
	FROM messages
	WHERE (from_user_id = 1 AND to_user_id = u.id) OR
		  (from_user_id = u.id AND to_user_id = 1)
) AS message_count FROM users u -- interactions all users with user = 1
WHERE u.id IN ( -- select friends
	SELECT 
	CASE  -- id = IF target_id == 1: initiator_id ELSE target_id
		WHEN initiator_user_id = 1
		THEN target_user_id ELSE initiator_user_id
	END
	FROM friend_requests
	WHERE (initiator_user_id = 1 OR target_user_id = 1)
		AND status = 'approved' -- check 'approved'
)
ORDER BY message_count DESC
LIMIT 1;
-- result: 4 | Norene | West | 3


-- 2
-- count media_id in likes WHERE owners < 12 years old
SELECT COUNT(*) AS likes FROM likes -- count
WHERE media_id IN (
	SELECT id FROM media -- get id media
	WHERE user_id IN ( -- owners < 12 years old
		SELECT user_id FROM profiles
		WHERE FLOOR(DATEDIFF(CURDATE(), birthday) / 365.25) < 12
	)
);
-- result: 4


-- 3

-- count of women
SELECT 'women' AS gender, COUNT(*) AS count FROM likes
WHERE user_id IN (
	SELECT user_id FROM profiles
	WHERE gender = 'f'
)

UNION ALL -- combine requests without filter 'unique'

-- count of men
SELECT 'men' AS gender, COUNT(*) AS count FROM likes
WHERE user_id IN (
	SELECT user_id FROM profiles
	WHERE gender = 'm'
);

-- add if output result
-- ORDER BY count DESC
-- LIMIT 1;
-- result: women | 16
