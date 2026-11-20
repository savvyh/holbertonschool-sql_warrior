SELECT t.libelle, t.nbplaces, v.modele, v.couleur, v.immat
FROM vehicules v
JOIN types_vehicules t ON t.id = v.type_voiture;