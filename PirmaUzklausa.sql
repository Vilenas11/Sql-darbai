/*
Visų skaitytojų, kurių adrese yra konkreti frazė, pavardės, vardai ir adresai.
*/
SELECT vardas, pavarde, adresas
FROM stud.skaitytojas
WHERE Adresas Like '%Tiesioji%'; 