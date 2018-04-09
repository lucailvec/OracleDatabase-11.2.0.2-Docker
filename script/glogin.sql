set termout off
col user_name new_value user_name
col db_name new_value db_name
select lower(user) user_name,
ltrim(rtrim(lower(global_name))) db_name
from global_name;
set sqlprompt "&user_name@&db_name> "
set termout on
set trimspool on
set trimout on
set serveroutput on
