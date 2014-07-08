
VERSION_ID    ATTR_ID VERSION_ VERSION_STATUS
---------- ---------- -------- --------------
      2000          5 07.07.14              0
      2001          5 07.07.14              1
      2002          6 07.07.14              1
      2003          7 07.07.14              1

select v.version_id,
v.attr_id,
d.attr_desc,
d.attr_status,
v.version_date,
v.VERSION_STATUS
  from version v join ATTR_DICTIONARY d on d.attr_id=v.attr_id;