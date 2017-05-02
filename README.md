# Format Filesize
This is a small function to format a BLOB filesize (or any number or filesize) into GB, MB, KB. Function is written in PLSQL (PL/SQL).

# Function Call
```sql
select
	filesize_format(1234567890123) x
from dual;
```

