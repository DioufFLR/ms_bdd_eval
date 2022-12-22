-- 1 Liste des français

SELECT customers.CompanyName AS 'Société', customers.ContactName AS 'contact', customers.ContactTitle AS 'Fonction', customers.Phone AS 'Téléphone'
FROM customers
WHERE customers.Country = 'France';

-- 2 Liste des produits vendus par le fournisseur 'Exotic Liquids'

SELECT products.ProductName AS 'Produit', products.UnitPrice AS 'Prix'
FROM products
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE suppliers.CompanyName = 'Exotic Liquids'

-- 3 Nombre de produits mis à disposition par les fournisseurs français
