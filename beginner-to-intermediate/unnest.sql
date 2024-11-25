WITH skills AS (
  SELECT 
    replace(replace(replace(skillIds, '[', ''), ']', ''), '"', '') AS cleaned_skill_ids,
    replace(replace(replace(skillLabels, '[', ''), ']', ''), '"', '') AS cleaned_skill_labels
  FROM freelancers
)
SELECT DISTINCT 
  trim(skill_id.value) AS unnested_skill_id,
  trim(skill_label.value) AS skill_label
FROM skills, 
     json_each('["' || replace(cleaned_skill_ids, ', ', '","') || '"]') AS skill_id,
     json_each('["' || replace(cleaned_skill_labels, ', ', '","') || '"]') AS skill_label
WHERE skill_id.key = skill_label.key
ORDER BY skill_label ASC;