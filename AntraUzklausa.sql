/*
Poros skaitytojų (jų vardai ir pavardės), kurių gimimo dienos yra tą patį mėnesį.
*/

SELECT DISTINCT a1.vardas, a1.pavarde, a1.gimimas, a2.vardas, a2.pavarde, a2.gimimas
FROM stud.skaitytojas a1, stud.skaitytojas a2
WHERE EXTRACT(MONTH FROM a1.gimimas) = EXTRACT(MONTH FROM a2.gimimas)
AND a1.nr < a2.nr;
/*and a1.nr NOT LIKE a2.nr*/