# SQL Join

## Different types of Join
- (INNER) JOIN: Returns records that have matching values in both tables
- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

[All types of Join with visualizations](https://towardsdatascience.com/visual-sql-joins-4e3899d9d46c)

## Join vs Subquery

The queries gets names of employee who earn more salary than his manager.

#### Join
```
SELECT a.NAME AS Employee
FROM Employee AS a JOIN Employee AS b
     ON a.ManagerId = b.Id
     AND a.Salary > b.Salary
;
```
##### Advantages
- Execution and retrieval time faster than subqueries.

##### Disadvantages
- Database server has to do more work when it comes to a lot of joins in a query => more time consuming to retrieve data
- Developer can be confused to choose the appropriate type among many types of joins

#### Subquery
```
SELECT Name as Employee FROM Employee e
WHERE Salary > (
    Select Salary FROM Employee m WHERE m.Id = e.ManagerId
)
;
```
##### Advantages
- Complex query can be broken down into a series of logical steps.
- Subquery is easy to read, understand and maintain.
- It allow to use the results of another query in the outer query.

##### Disadvantages
- Execution is slower than JOIN.
- We cannot modify a table and select from the same table within a subquery in the same SQL statement.