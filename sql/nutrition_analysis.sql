-- 1. Which foods provide the highest protein with the lowest calories?
-- Insight: Identifies the most calorie-efficient protein sources.

SELECT food_item,
       protein_g,
       energy_kcal,
       ROUND(protein_g / energy_kcal, 4) AS protein_ratio
FROM nutrition
WHERE energy_kcal > 0
ORDER BY protein_ratio DESC
LIMIT 10;

-- 2. Which foods are the most nutrient-dense?
-- Insight: Reveals foods that provide the most nutritional value per calorie consumed.

SELECT food_item,
       nutrition_density
FROM nutrition
WHERE is_spice_condiment = FALSE
ORDER BY nutrition_density DESC
LIMIT 10;

-- 3. Which foods have the highest health risk scores?
-- Insight: Identifies foods that may contribute to obesity, diabetes, and cardiovascular diseases.

SELECT food_item,
       health_risk_score
FROM nutrition
ORDER BY health_risk_score DESC
LIMIT 10;

-- 4. Which foods contain the highest amount of free sugar?
-- Insight: Highlights foods that are major contributors to excessive sugar intake.

SELECT food_item,
       free_sugar_g
FROM nutrition
ORDER BY free_sugar_g DESC
LIMIT 10;

-- 5. Which foods are high in both fat and sugar?
-- Insight: Identifies highly processed and calorie-dense foods linked to poor health outcomes.

SELECT food_item,
       fat_g,
       free_sugar_g,
       (fat_g + free_sugar_g) AS fat_sugar_score
FROM nutrition
WHERE fat_g > (SELECT AVG(fat_g) FROM nutrition)
  AND free_sugar_g > (SELECT AVG(free_sugar_g) FROM nutrition)
ORDER BY fat_sugar_score DESC
LIMIT 10;

-- 6. Which foods have high nutritional value despite having moderate or high calories?
-- Insight: Distinguishes nutrient-rich foods from empty-calorie foods.

SELECT food_item ,
	   energy_kcal,
       nutrition_density 
FROM nutrition
WHERE energy_kcal > (SELECT AVG(energy_kcal) FROM nutrition) AND is_spice_condiment=FALSE
ORDER BY nutrition_density DESC LIMIT 10;

-- 7. Which foods provide the highest calcium content with a low health risk score?
-- Insight: Identifies foods that support bone health without excessive unhealthy nutrients.

SELECT food_item,
	   calcium_mg,
       health_risk_score
FROM nutrition
WHERE health_risk_score < 40 AND is_spice_condiment = FALSE
ORDER BY calcium_mg DESC LIMIT 10;

-- 8. Which foods are rich in fiber but low in free sugar?
-- Insight: Highlights foods beneficial for digestive health and blood sugar management.

SELECT food_item,
	   fibre_g,
       free_sugar_g
FROM nutrition
WHERE free_sugar_g < (SELECT AVG(free_sugar_g) FROM nutrition) AND is_spice_condiment=FALSE
ORDER BY fibre_g DESC LIMIT 10;

-- 9. Which foods have high protein content while maintaining a low health risk score?
-- Insight: Identifies healthier protein sources suitable for fitness and weight management.

SELECT food_item,
	   protein_g,
       health_risk_score
FROM nutrition
WHERE health_risk_score < 40 AND is_spice_condiment = FALSE
ORDER BY protein_g DESC LIMIT 10;

-- 10. Which foods have the lowest health risk scores overall?
-- Insight: Reveals the safest and healthiest foods in the dataset.

SELECT food_item,health_risk_score 
FROM nutrition 
WHERE is_spice_condiment = FALSE
ORDER BY health_risk_score LIMIT 10;

-- 11. Which foods offer the best protein-to-calorie ratio?
-- Insight: Finds foods that deliver the most protein for every calorie consumed.

SELECT food_item , (protein_g/energy_kcal) AS protein_calorie_ratio  
FROM nutrition  
WHERE protein_g > 10
ORDER BY  protein_calorie_ratio  DESC LIMIT 10;

-- 12. What percentage of foods fall into low, medium, and high health-risk categories?
-- Insight: Provides an overall health profile of the dataset.

SELECT CASE
WHEN health_risk_score <=33 THEN "Low risk"
WHEN health_risk_score <=66 THEN "Medium risk"
ELSE "High Risk"
END AS risk_category,
COUNT(*)
FROM nutrition
WHERE is_spice_condiment = FALSE
GROUP BY risk_category;

-- 13. Which foods perform better than the dataset average in both nutrition density and health risk score?
-- Insight: Identifies foods that are objectively healthier than most alternatives.

SELECT food_item,nutrition_density,health_risk_score FROM nutrition 
WHERE nutrition_density > (SELECT AVG(nutrition_density) FROM nutrition) 
AND health_risk_score < (SELECT AVG(health_risk_score) FROM nutrition) 
AND is_spice_condiment = FALSE
ORDER BY nutrition_density DESC;

-- 14. What are the top 10 healthiest foods overall based on nutrition density and health risk score?
-- Insight: Produces a ranked list of foods that can be recommended for healthier eating.

SELECT
    food_item,
    nutrition_density,
    health_risk_score,
    (nutrition_density - health_risk_score) AS overall_health_score
FROM nutrition
WHERE is_spice_condiment = FALSE
ORDER BY overall_health_score DESC
LIMIT 10;