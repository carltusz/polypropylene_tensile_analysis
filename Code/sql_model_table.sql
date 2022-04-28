-- create models table schema
CREATE TABLE models(
	model VARCHAR PRIMARY KEY
)

-- drop/delete statements
DROP TABLE models
DELETE FROM models;

-- insert fully joined table into model lookup table (use for manual ETL)
INSERT INTO models (
	SELECT DISTINCT q.model FROM
	(
		SELECT ma.model FROM model_accuracy ma
		UNION
		SELECT llc.model FROM logistic_learning_curves llc
		UNION
		SELECT nn.model FROM neural_network_results nn
	) q WHERE q.model IS NOT NULL
)

-- view records in models
SELECT * FROM models

SELECT * FROM neural_network_results