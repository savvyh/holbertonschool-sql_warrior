SELECT gm.signification as genre, COUNT(num_manga) as nombre_de_manga_par_genre
FROM genres_manga as gm
JOIN mangas ON mangas.code_genre = gm.code_genre
GROUP BY genre
ORDER BY nombre_de_manga_par_genre DESC;