/*
Vardas ir pavardė skaitytojo, kuris yra paėmęs daugiausiai knygų. Greta pateikti ir paimtų egzempliorių skaičių.
*/

SELECT skaitytojas.vardas, skaitytojas.pavarde, skaitytojas.nr, count(egzempliorius.paimta) as "Paimtu egz. sk."
FROM stud.skaitytojas, stud.egzempliorius
where skaitytojas.nr = egzempliorius.skaitytojas
group by skaitytojas.vardas, skaitytojas.pavarde, skaitytojas.nr
having count(egzempliorius.paimta) = 
    (SELECT MAX(foo) FROM (SELECT count(egzempliorius.paimta) foo
        FROM stud.egzempliorius, stud.skaitytojas
            WHERE skaitytojas.nr = egzempliorius.skaitytojas
                group by vardas, skaitytojas.nr)as hehe);