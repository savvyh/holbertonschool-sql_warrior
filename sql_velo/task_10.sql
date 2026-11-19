SELECT v.id, v.code, v.type_velo, v.statut, v.station_actuelle_id
FROM velos v
WHERE v.statut = 'maintenance';