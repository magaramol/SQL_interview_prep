SELECT *
, dense_rank() over(ORDER BY sal desc) as rnk
 from emp
