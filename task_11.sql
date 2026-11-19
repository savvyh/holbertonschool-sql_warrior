SELECT cl.code_client, cl.prenom, cl.nom, COUNT(tl.num_facture) as nombre_de_location, SUM(mangas.prix_base * types.coefficient) as total_depenses
FROM clients cl
JOIN factures f on f.code_client = cl.code_client
JOIN table_location tl on tl.num_facture = f.num_facture
JOIN mangas on mangas.num_manga = tl.num_manga
JOIN types_location types on types.code_type = tl.code_type
GROUP BY code_client
ORDER BY total_depenses DESC
LIMIT 5;