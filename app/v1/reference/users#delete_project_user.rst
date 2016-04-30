DELETE /accounts/{account_id}/projects/{project_id}/users/{user_id}
Remove the user from the project
This api will remove user from the project, user record still exists in the account after remove.


.. http:delete:: accounts/{account_id}/projects/{project_id}/users/{user_id}


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param project_id: Required. Type: string. HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param user_id: Required. Type: string. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader service_type: Required. Type: string. single type allowed. field, glue or plan, etc. Remove user from specific service project only.. 


Status Codes:

    :statuscode 200: Success
    :statuscode 400: Bad Request
    :statuscode 403: Forbidden
    :statuscode 404: Not Found
    :statuscode 409: Conflict
    :statuscode 422: Unprocessable Entity
    :statuscode 500: Internal Server Error

Request:
curl -H "Content-Type: application/json" -H "Authorization: Bearer hW0DvSvGgszPis1Yhot4c8kWW3NG" -X DELETE https://developer.api.autodesk.com:443/hq-api/v1/accounts/9dbb160e-b904-458b-bc5c-ed184687592d/projects/1e4bdc48-1bd7-4a4f-a91f-bd238cce5830/users/79b51334-1127-4313-a0e1-4986b3e96c47?service_type=field


Responsive:
{"message":"success, deleted"}