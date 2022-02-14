SELECT provider as Provider, date(transaction_date) as Day, count(user_id) as Number_of_Subscribers 
FROM Subscribers
GROUP BY provider, transaction_date
ORDER BY Number_of_Subscribers DESC


