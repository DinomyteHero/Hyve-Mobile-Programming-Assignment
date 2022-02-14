WITH t1 as(SELECT user_id as id, count(user_id) as num_user ,provider
FROM Subscribers
GROUP BY user_id,provider
HAVING num_user > 1
ORDER BY num_user DESC)


SELECT Subscribers.user_id, Subscribers.provider, Subscribers.service
FROM Subscribers
Join t1
ON t1.id = Subscribers.user_id
GROUP BY user_id, Subscribers.provider, Subscribers.service
HAVING count(Subscribers.subscription_id) = 1
ORDER BY user_id