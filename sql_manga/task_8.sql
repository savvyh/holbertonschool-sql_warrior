SELECT clients.ville, COUNT(clients.code_client) as nombre_de_clients, SUM(enfants) as nombre_d_enfants
FROM clients
GROUP BY ville
ORDER BY ville ASC;