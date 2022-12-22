-- 1 Liste des français

SELECT customers.CompanyName AS 'Société', customers.ContactName AS 'contact', customers.ContactTitle AS 'Fonction', customers.Phone AS 'Téléphone'
FROM customers
WHERE customers.Country = 'France';

-- 2 Liste des produits vendus par le fournisseur 'Exotic Liquids'

