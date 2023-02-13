CREATE or REPLACE VIEW all_names as
SELECT id, name, 'universites' as type
from universites
UNION
SELECT id, full_name, 'pupils' as type
from pupils
UNION
SELECT id, name, 'schools' as type
from schools
UNION
SELECT id, full_name, 'users' as type
FROM users