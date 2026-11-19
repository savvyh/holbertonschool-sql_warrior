SELECT gm.signification, types.libelle, COUNT(tl.num_facture) as nombre_location
FROM types_location types
JOIN table_location tl on tl.code_type = types.code_type
JOIN factures f on f.num_facture = tl.num_facture
JOIN mangas m on m.num_manga = tl.num_manga
JOIN genres_manga gm on m.code_genre = gm.code_genre
GROUP BY gm.signification, types.libelle
ORDER BY gm.signification ASC;
