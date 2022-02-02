SELECT object_name
FROM all_objects
WHERE object_name LIKE 'USER@_%' ESCAPE '@'
    AND object_type = 'VIEW';
