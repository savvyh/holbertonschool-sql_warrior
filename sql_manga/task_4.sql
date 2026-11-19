Afficher les mangas dont le titre contient « Tome 1 ».
Affiche uniquement le num_manga et le titre.
Trier les résultats par num_manga.

SELECT num_manga, titre
FROM mangas
WHERE titre LIKE '%Tome 1%'
ORDER BY num_manga;