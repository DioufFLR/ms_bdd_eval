-- 1 Liste des français

SELECT customers.CompanyName AS 'Société', customers.ContactName AS 'contact', customers.ContactTitle AS 'Fonction', customers.Phone AS 'Téléphone'
FROM customers
WHERE customers.Country = 'France';

-- 2 Liste des produits vendus par le fournisseur 'Exotic Liquids'

SELECT products.ProductName AS 'Produit', products.UnitPrice AS 'Prix'
FROM products
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE suppliers.CompanyName = 'Exotic Liquids';

-- 3 Nombre de produits mis à disposition par les fournisseurs français

SELECT suppliers.CompanyName AS 'Fourinsseur', COUNT(products.SupplierID) AS 'NbreProduits'
FROM suppliers
JOIN products ON products.SupplierID = suppliers.SupplierID
WHERE suppliers.Country = 'France'
GROUP BY suppliers.CompanyName
ORDER BY NbreProduits DESC;

-- 4 Liste des clients français ayant passé plus de 10 commandes

SELECT customers.CompanyName AS 'Client', COUNT(orders.OrderID) AS 'Nbre commande'
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
WHERE customers.Country = 'France' 
GROUP BY customers.CompanyName
HAVING COUNT(orders.OrderID) > 10;

-- 5 Liste des clients dont le montant cumulé de toutes les commandes passées est supérieur à 3000 $

