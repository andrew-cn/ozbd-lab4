-- Lab 4: Trigger for DB 'petaccessories'
-- Adds and maintains column `updated_at` in table `tovar`

-- Step 1 (schema change; run once on a fresh DB):
-- ALTER TABLE `tovar`
-- ADD COLUMN `updated_at` TIMESTAMP NULL DEFAULT NULL
-- AFTER `id_kategorii`;

DELIMITER //

CREATE TRIGGER `trg_Tovar_BeforeUpdate`
BEFORE UPDATE ON `tovar`
FOR EACH ROW
BEGIN
    -- NEW.* represents the row after UPDATE.
    SET NEW.updated_at = NOW();
END //

DELIMITER ;
