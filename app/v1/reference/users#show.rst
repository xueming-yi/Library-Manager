GET /accounts/{account_id}/users/{user_id}
Query the user details


.. http:get:: accounts/{account_id}/users/{user_id}


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param user_id: Required. Type: string. or user_id, UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


Status Codes:

    :statuscode 200: Success
    :statuscode 400: Bad Request
    :statuscode 403: Forbidden
    :statuscode 404: Not Found
    :statuscode 409: Conflict
    :statuscode 422: Unprocessable Entity
    :statuscode 500: Internal Server Error

Request:
curl -H "Authorization: Bearer XZvCJNhdxESsBRIH28MfLf2hKL5O" https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/9dbb160e-b904-458b-bc5c-ed184687592d/users/a75e8769-621e-40b6-a524-0cffdd2f784e


Response:
{"id":"a75e8769-621e-40b6-a524-0cffdd2f784e","account_id":"9dbb160e-b904-458b-bc5c-ed184687592d","status":"active","status_reason":null,"role":"account_admin","admin_phone":"","created_at":"2015-06-26T14:47:39.458Z","updated_at":"2016-04-07T07:15:29.261Z","company_id":"28e4e819-8ab2-432c-b3fb-3a94b53a91cd","related_mail_id":"aa3f9f76-986d-4248-947f-ead313e860c1","last_sign_in":"2016-04-07 07:15:29.253863","email":"victor.qingsheng.li@autodesk.com","name":"Victor-Qingsheng Li-New1","nickname":"victor","first_name":"Victor-Qingsheng","last_name":"Li-New1","uid":"L9EBJKCGCXBB","image_url":"https://s3.amazonaws.com:443/com.autodesk.storage.public.staging/oxygen/L9EBJKCGCXBB/profilepictures/x50.jpg?r=635751327439770000","address_line_1":"Bell","address_line_2":"No.399","city":"Los Angeles","postal_code":"90201","state_or_province":"CA","country":"US","phone":"{\"Number\":\"18932298705\",\"PhoneType\":0,\"Extension\":\"\"}","company":"Docs_QA_04071011","job_title":"SQA","industry":"","about_me":"New added content","system_user_status":"active","company_name":"Acme"}

