-- Lab 4: VIEW for DB 'petaccessories'
-- Detailed orders for accessories for pets

CREATE VIEW `v_Detailed_Orders` AS
SELECT
    z.id_zamovlennya              AS `order_id`,
    z.data_zamovlennya            AS `order_date`,
    z.status                      AS `order_status`,
    k.imya                        AS `customer_name`,
    k.email                       AS `customer_email`,
    t.nazva                       AS `product_name`,
    t.cena                        AS `product_price`,
    pz.kilkist                    AS `quantity`,
    pz.cena_na_moment_pokupky     AS `price_at_purchase`,
    pz.suma                       AS `line_total`
FROM
    zamovlennya AS z
JOIN
    klient AS k
      ON z.id_klienta = k.id_klienta
JOIN
    poziciya_zamovlennya AS pz
      ON z.id_zamovlennya = pz.id_zamovlennya
JOIN
    tovar AS t
      ON pz.id_tovara = t.id_tovara
ORDER BY
    z.id_zamovlennya DESC;
