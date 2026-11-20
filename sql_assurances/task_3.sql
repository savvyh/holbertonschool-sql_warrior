SELECT v.id, modele
FROM vehicules v
LEFT JOIN contrats c ON c.vehicule = v.id
WHERE c.assureur IS NULL; 