SELECT SR.SERVICE_ID, SR.PROPERTY_ID
FROM SERVICE_REQUEST SR
WHERE EST_HOURS > ALL (SELECT EST_HOURS
                       FROM SERVICE_REQUEST
					   WHERE CATEGORY_NUMBER = 5);