SELECT m.titre, mg.prenom, mg.nom, mg.pays
FROM mangas m
JOIN mangakas mg ON mg.code_mangaka = m.code_mangaka
ORDER BY m.titre;