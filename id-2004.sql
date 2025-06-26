SELECT
  user_id,
  SUM(number_of_comments) AS total_comments_last_30_days
FROM fb_comments_count
WHERE created_at
  BETWEEN DATE '2020-02-10' - INTERVAL '30 days'
      AND DATE '2020-02-10'
GROUP BY user_id;
