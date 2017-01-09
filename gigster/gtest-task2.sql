SELECT
  trans1.recipient as account_name
FROM
  transfers as trans1
WHERE (
  SELECT
    COUNT(*)
  FROM
    transfers trans2
  WHERE
    trans2.recipient = trans1.recipient AND
    trans2.amount >= trans1.amount
) <= 3
GROUP BY
  trans1.recipient
HAVING
  SUM(trans1.amount) >= 1024
ORDER BY
  trans1.recipient;
