﻿--declare @mon = (SELECT DATEPART(month, paydate)paydate)
SELECT SUM(amount), MONTH(paydate) FROM payments WHERE (SELECT DATEPART(year, paydate)paydate) LIKE (SELECT DATEPART(year, CURRENT_TIMESTAMP)) GROUP BY MONTH(paydate)
--select sum(amount) as amount, dater = (SELECT DATEPART(month, paydate) as paydate) FROM Payments where (SELECT DATEPART(year, paydate)paydate) LIKE (SELECT DATEPART(year, CURRENT_TIMESTAMP)) group by paydate-- order by paymentdate