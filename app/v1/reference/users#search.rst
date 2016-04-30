GET /accounts/{account_id}/users/search
Search by specific fields


.. http:get:: accounts/{account_id}/users/search


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader name: Type: string. max_length: 255; e.g. John Smith;. 


    :reqheader email: Type: string. max_length: 255; email format. e.g. autodesk@adsk.com;. 


    :reqheader company_name: Type: string. max_length: 255; e.g. Autodesk;. 


    :reqheader partial: Type: string. true: fuzzy match, default: true. avaliable options: {true,false}


    :reqheader operator: Type: string. case insensitive, default: AND. avaliable options: {AND,OR}


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
curl -H "Authorization: Bearer XZvCJNhdxESsBRIH28MfLf2hKL5O" https://developer-dev.api.autodesk.com/ea-api-dev/v1/accounts/efec10ec-a367-49fd-ab92-c70185fbb660/users/search?email=fei.zhang2%40autodesk.com&limit=1


Response:
[{"id":"579d4408-39a4-4b3a-9474-6e781e68ab94","email":"fei.zhang2@autodesk.com","name":"New Member","nickname":null,"first_name":"New","last_name":"Member","uid":null,"image_url":null,"last_sign_in":null,"role":"account_admin","address_line_1":null,"address_line_2":null,"city":null,"postal_code":null,"state_or_province":null,"country":null,"phone":null,"company":null,"job_title":null,"industry":null,"about_me":null,"created_at":"2015-04-29T06:59:05.582Z","updated_at":"2015-04-29T06:59:05.582Z","system_user_status":null,"status":"inactive","status_reason":"pending","company_id":null,"company_name":null}]






