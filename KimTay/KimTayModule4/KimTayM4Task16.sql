SELECT ITEM_ID, DESCRIPTION, (ON_HAND * PRICE) AS ON_HAND_VALUE
FROM ITEM
WHERE ON_HAND > (SELECT AVG(ON_HAND)
		         FROM ITEM
);