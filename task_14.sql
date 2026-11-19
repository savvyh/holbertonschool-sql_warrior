SELECT gm.signification, ROUND(SUM(prix_base * coefficient), 2) as chiffre_affaires
FROM genres_manga gm
JOIN mangas m on m.code_genre = gm.code_genre
JOIN table_location tl on tl.num_manga = m.num_manga
JOIN types_location ty on ty.code_type = tl.code_type
GROUP BY gm.signification
ORDER BY chiffre_affaires DESC;