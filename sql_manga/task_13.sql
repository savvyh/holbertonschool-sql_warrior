SELECT ville, 
COUNT(CASE WHEN (gm.signification = 'Aventure') THEN 1 END) as Aventure,
COUNT(CASE WHEN (gm.signification = 'Fantasy') THEN 1 END) as Fantasy,
COUNT(CASE WHEN (gm.signification = 'Horreur') THEN 1 END) as Horreur,
COUNT(CASE WHEN (gm.signification = 'Shōnen') THEN 1 END) as Shōnen
FROM clients
JOIN factures f on f.code_client = clients.code_client
JOIN table_location tl on tl.num_facture = f.num_facture
JOIN mangas m on m.num_manga = tl.num_manga
JOIN genres_manga gm on gm.code_genre = m.code_genre
WHERE gm.signification IN ('Aventure', 'Fantasy', 'Horreur', 'Shōnen')
GROUP BY ville
ORDER BY ville ASC;