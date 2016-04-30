GET /accounts/{account_id}/users
Query all the users in one account


.. http:get:: accounts/{account_id}/users


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader limit: Type: integer. set response array's size. Default size: 10. Default sort order is updated_at DESC.. 


    :reqheader offset: Type: integer. set offset of response array. Default value: 0. Default sort order is updated_at DESC.. 


    :reqheader sort: Type: string. sort result by fields. Separate fields with comma, use minus sign '-' to reverse order. e.g. id, name, -status. Invalid fields and whitespace will be ignored.. 


    :reqheader field: Type: string. filter result with expected fields, and 'id' will be always returned. Separate fields with comma. Invalid fields will be ignored.. 


Status Codes:

    :statuscode 200: Success
    :statuscode 201: Created
    :statuscode 400: Bad Request
    :statuscode 403: Forbidden
    :statuscode 404: Not Found
    :statuscode 409: Conflict
    :statuscode 422: Unprocessable Entity
    :statuscode 500: Internal Server Error


Request:

curl -H "Authorization: Bearer XZvCJNhdxESsBRIH28MfLf2hKL5O" https://developer-dev.api.autodesk.com/ea-api-dev/v1/accounts/efec10ec-a367-49fd-ab92-c70185fbb660/users


Response:
[{"id":"6a14db4f-5e3e-4af8-9ff3-11467ce1e4e7","email":"b9476310-7334-5ea8-56de-8a3d4ca19628_user2@gmail.com","name":"New Member","nickname":null,"first_name":"New","last_name":"Member","uid":null,"image_url":null,"last_sign_in":null,"role":"project_admin","address_line_1":null,"address_line_2":null,"city":null,"postal_code":null,"state_or_province":null,"country":"US","phone":null,"company":null,"job_title":null,"industry":null,"about_me":null,"created_at":"2016-04-07 01:20:48.16511","updated_at":"2016-04-07 01:20:48.16511","system_user_status":null,"admin_phone":null,"status":"inactive","status_reason":"pending","company_id":"ed971d93-7093-4f76-bd38-aae808971393","company_name":"ff53b538-49a2-32f4-65b0-94eec30550c5"}]