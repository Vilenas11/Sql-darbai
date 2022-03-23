/*
Kiekvienam skaitytojui (vardas, pavardė) skaičius datų, kai jis paėmė bent vieną egzempliorių.
*/

SELECT DISTINCT skaitytojas.vardas, skaitytojas.pavarde, COUNT(DISTINCT stud.egzempliorius.Paimta) AS "Datu Skaicius", skaitytojas.nr
FROM stud.skaitytojas, stud.egzempliorius
WHERE skaitytojas.nr = egzempliorius.skaitytojas
GROUP BY skaitytojas.vardas, skaitytojas.pavarde, skaitytojas.nr;