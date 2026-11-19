SELECT m.titre, mk.prenom, mk.nom, gm.signification
FROM mangas m
JOIN mangakas mk on mk.code_mangaka = m.code_mangaka
JOIN genres_manga gm on gm.code_genre = m.code_genre
WHERE gm.signification = 'Horreur';