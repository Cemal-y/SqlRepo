/*Vraag 1*/
SELECT mov_title, mov_year
FROM movie;
/*Vraag 2*/
SELECT mov_year
FROM movie
WHERE mov_title LIKE 'American Beauty';
/*Vraag 3*/
SELECT *
FROM movie
WHERE mov_year LIKE 1999;
/*Vraag 4*/
SELECT *
FROM movie
WHERE mov_year < 1998;
/*Vraag 5*/
SELECT rev_name
FROM reviewer
UNION
SELECT mov_title
FROM movie;
/*Vraag 6*/
SELECT rev_name
FROM reviewer
INNER JOIN rating ON rating.rev_id = reviewer.rev_id
WHERE rev_stars >= 7;
/*Vraag 7*/
SELECT mov_title
FROM movie
LEFT JOIN rating r on movie.mov_id = r.mov_id
WHERE r.mov_id IS NULL;
/*Vraag 8*/
SELECT mov_title
FROM movie
WHERE mov_id IN (5,7,9);
/*Vraag 9*/
SELECT act_id
FROM actor
WHERE act_fname LIKE 'Woody'
AND act_lname LIKE 'Allen';
/*Vraag 10*/
SELECT mov_title
FROM movie
WHERE mov_rel_country NOT LIKE 'UK';
/*Vraag 11*/
SELECT DISTINCT mov_year
FROM movie
INNER JOIN rating r on movie.mov_id = r.mov_id
Where rev_stars > 3
ORDER BY mov_year;
/*Vraag 12*/
SELECT mov_title, MAX(rev_stars)
FROM movie
INNER JOIN rating r on movie.mov_id = r.mov_id
GROUP BY mov_title
ORDER BY mov_title;