SELECT f.num_facture, SUM(prix_base * coefficient) as depenses
FROM factures f
JOIN table_location tl on tl.num_facture = f.num_facture
JOIN types_location types on types.code_type = tl.code_type
JOIN mangas m on m.num_manga = tl.num_manga
GROUP BY num_facture
ORDER BY num_facture ASC;