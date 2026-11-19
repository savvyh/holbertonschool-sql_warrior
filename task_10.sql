SELECT tl.num_facture, cl.prenom, cl.nom, m.titre, tp.libelle, tl.date_retour
FROM table_location tl
JOIN factures f on f.num_facture = tl.num_facture
JOIN clients cl on f.code_client = cl.code_client
JOIN types_location tp on tp.code_type = tl.code_type
JOIN mangas m on m.num_manga = tl.num_manga;
