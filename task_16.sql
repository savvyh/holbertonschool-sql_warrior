SELECT cl.ville, ROUND(SUM(prix_base * coefficient), 2) as chiffre_affaires
FROM clients cl
JOIN factures f on f.code_client = cl.code_client
JOIN table_location tl on tl.num_facture = f.num_facture
JOIN types_location tp on tp.code_type = tl.code_type
JOIN mangas m on m.num_manga = tl.num_manga
GROUP BY cl.ville
ORDER BY chiffre_affaires DESC;