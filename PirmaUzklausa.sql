/*
Visų skaitytojų, kurių adrese yra konkreti frazė, pavardės, vardai ir adresai.
*/
SELECT
Ak, vardas, pavarde, gimimas
from stud.skaitytojas
where
  DATE_PART('year', AGE('2021-10-23', gimimas)) > 18;