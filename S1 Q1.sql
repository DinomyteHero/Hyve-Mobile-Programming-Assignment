SELECT provider as Provider, service as Service, sum(chargeincents)/100 as Revenue, count(user_id) as Number_of_Subscribers
FROM Subscribers
JOIN Transactions
ON Transactions.subscription_id = Subscribers.subscription_id
WHERE transcationstatus = "Success"
GROUP BY provider, service
