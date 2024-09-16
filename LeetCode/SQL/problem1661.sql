-- 1661. Average Time of Process per Machine

/* There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process.

The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.

The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.

Return the result table in any order. */

SELECT A1.machine_id AS machine_id, 
    ROUND(AVG(A2.timestamp - A1.timestamp),3) AS processing_time
FROM Activity AS A1, Activity AS A2
WHERE 
    (A2.activity_type = 'end' AND A1.activity_type = 'start')
    AND A2.process_id = A1.process_id
    AND A2.machine_id = A1.machine_id
GROUP BY A1.machine_id;


-- Alternative solution
SELECT A1.machine_id AS machine_id, 
    ROUND(AVG(A2.timestamp - A1.timestamp),3) AS processing_time
FROM Activity AS A1 INNER JOIN Activity AS A2
    ON (A2.activity_type = 'end' AND A1.activity_type = 'start')
    AND A2.process_id = A1.process_id
    AND A2.machine_id = A1.machine_id
GROUP BY A1.machine_id;