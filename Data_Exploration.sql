
CREATE TABLE IF NOT EXISTS "medi_supplement".medi_suppl(
    Year INT,
    Plan_Type Char(2),
    Incurred_Premium BIGINT,
    Loss_Claims BIGINT,
	Average_Ratios decimal(10,2),
	Lives INT,
	Data_Type Varchar(10)

);



SELECT
    year,
    Plan_Type,
    incurred_premium,
    Loss_Claims,
    lives,
	Data_Type,
    round((loss_claims::Numeric / incurred_premium)*100,2)  || '%' AS loss_ratio,
    Incurred_premium / lives AS premium_per_life,
    Loss_claims / lives AS claims_per_life
FROM 
	"medi_supplement".medi_suppl;
