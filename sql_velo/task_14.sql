SELECT u.id
FROM utilisateurs u
LEFT JOIN locations ON locations.utilisateur_id = u.id
WHERE locations.utilisateur_id IS NULL;