SELECT  e.id as employe, v.id as vehicule, d.lieu
FROM vehicules v
JOIN deplacements d ON d.vehicule = v.id
JOIN employes e ON e.id = d.employe
WHERE d.lieu = 'Nice';