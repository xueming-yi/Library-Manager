GET /accounts/{account_id}/projects/{project_id}/users
Query users who participated in the project
You may get different results for leave parameter 'service_type' empty or fill in right value:
  1. If the value is correct, will fetch users participated in specific service project.
  2. If the value is empty, will fetch users participated in all service projects under the HQ project.


.. http:get:: accounts/{account_id}/projects/{project_id}/users


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param project_id: Required. Type: string. HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader service_type: Type: string. single type allowed. field, glue or plan, etc. . 


    :reqheader limit: Type: integer. set response array's size. Default size: 10. Default sort order is updated_at DESC.. 


    :reqheader offset: Type: integer. set offset of response array. Default value: 0. Default sort order is updated_at DESC.. 


Status Codes:

    :statuscode 200: Success
    :statuscode 400: Bad Request
    :statuscode 403: Forbidden
    :statuscode 404: Not Found
    :statuscode 409: Conflict
    :statuscode 422: Unprocessable Entity
    :statuscode 500: Internal Server Error


Request:
curl -H "Authorization: Bearer XZvCJNhdxESsBRIH28MfLf2hKL5O" https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/9dbb160e-b904-458b-bc5c-ed184687592d/projects/1e4bdc48-1bd7-4a4f-a91f-bd238cce5830/users

Response:
[{"id":"b73ea399-7408-4015-b84f-02fcab3bce8a","invite_id":null,"role":"project_admin","created_at":"2016-04-07T06:59:42.996Z","updated_at":"2016-04-07T07:44:59.842Z","invite_url":null,"related_mail_id":null,"pseudo_unsync_resource_id":"91a693d2-485d-483c-ad9d-a1c412e28418","global_roles":null,"synced":true,"project_id":"1e4bdc48-1bd7-4a4f-a91f-bd238cce5830","company_id":"e2f69dc7-a6f4-410f-b6af-07ccdbaf3052","company_name":"New Company","email":"autodesk_daisy_7@sina.com","name":"seven daisy","nickname":"seven daisy","first_name":"seven","last_name":"daisy","uid":"3BBGKA2MAWHE","image_url":"https://api-staging.autodesk.com/content/identity/1.0.2118.382487.761/Content/images/icons/user_X50.png","last_sign_in":"2016-04-07 07:26:52.000000","address_line_1":"","address_line_2":"","city":"","postal_code":"","state_or_province":"","country":"US","phone":"\"\"","company":null,"job_title":"","industry":"","about_me":"","system_user_status":null,"account_id":"9dbb160e-b904-458b-bc5c-ed184687592d","status":"inactive","status_reason":"disabled","admin_phone":null}]
