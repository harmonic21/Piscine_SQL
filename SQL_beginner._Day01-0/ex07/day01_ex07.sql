SELECT po.order_date,
       p.name || '(age:' || p.age || ')' AS person_information
FROM person_order po
    LEFT JOIN person p ON po.person_id = p.id
ORDER BY order_date, person_information;