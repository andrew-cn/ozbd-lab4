-- Lab 4: Stored procedure for DB 'petaccessories'
-- Adds new accessory (product) to table `tovar`

DELIMITER //

CREATE PROCEDURE `sp_AddNewAccessory`(
    IN p_nazva              VARCHAR(255),
    IN p_opys               TEXT,
    IN p_cena               DECIMAL(10,2),
    IN p_kilkist_na_skladi  INT,
    IN p_kolir              VARCHAR(30),
    IN p_rozmir             VARCHAR(10),
    IN p_ruchna_robota      TINYINT(1),
    IN p_id_kategorii       INT
)
BEGIN
    INSERT INTO `tovar`
        (`nazva`,
         `opys`,
         `cena`,
         `kilkist_na_skladi`,
         `kolir`,
         `rozmir`,
         `ruchna_robota`,
         `id_kategorii`)
    VALUES
        (p_nazva,
         p_opys,
         p_cena,
         p_kilkist_na_skladi,
         p_kolir,
         p_rozmir,
         p_ruchna_robota,
         p_id_kategorii);
END //

DELIMITER ;
