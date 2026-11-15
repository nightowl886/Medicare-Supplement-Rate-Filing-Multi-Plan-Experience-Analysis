
CREATE TABLE IF NOT EXISTS "medi_supplement".medi_suppl(
    Year INT,
    Plan_Type Char(2),
    Incurred_Premium BIGINT,
    Loss_Claims BIGINT,
	Average_Ratios decimal(10,2),
	Lives int,
	Data_Type Varchar(10)

);
