/*SELECT * from Categories;*/
/*SELECT Category from Categories order by Category desc;*/
/*SELECT Name FROM Brewers where Turnover>5000;*/
/*SELECT Name, City FROM Brewers where Turnover < 5000 and Turnover != 0 order by Turnover;*/
/*select DISTINCT Alcohol from Beers order by Alcohol desc ;*/
/*select DISTINCT Name from Beers where Name like '%wit%' order by Name;*/
/*select * from Beers where Alcohol between  4 and 6;*/
/*select name  from Beers where Alcohol limit 0,3;*/
/*select * from Beers order by Alcohol desc limit 3;*/
/*select Name, Address, concat(ZipCode, ', ', City) as City
FROM Brewers;*/

/*SELECT count(*) from Beers;*/

/*select AVG(Alcohol) as average,
       MAX(Alcohol) AS Maximum,
       MIN(Alcohol) AS Minimum,
       SUM(Alcohol) AS TotalSum
FROM Beers;*/
/*select avg(Alcohol) AS Average, BrewerId from Beers group by BrewerId;*/
/*SELECT LEFT(Name, 1) AS First, AVG(Alcohol) AS Average FROM Beers GROUP BY First;*/
/*SELECT BrewerId, MIN(Alcohol) AS Minimum FROM Beers GROUP BY BrewerId HAVING Minimum < 5;*/

/*calc */
/*SELECT BrewerId, AVG(Alcohol) AS Average FROM Beers GROUP BY BrewerId HAVING COUNT(*) > 10;*/

/*calc turnover in dollars and yen from brewers, retrieve name and turnover*/
SELECT Name, Turnover * 0.9118 AS Dollar,
             Turnover * 0.5 AS Yen
FROM Brewers;