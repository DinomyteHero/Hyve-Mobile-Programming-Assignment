SELECT Country, City, count(C_df.user_id) as num_user, service
FROM C_df
JOIN Subscribers
ON Subscribers.user_id = C_df.user_id
WHERE C_df.Country is not NULL 
AND C_df.City is not NULL
AND subscription_status = 'Active'
GROUP BY C_df.Country, C_df.City
ORDER BY num_user DESC
