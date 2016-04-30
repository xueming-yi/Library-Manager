POST /accounts/{account_id}/projects/{project_id}/users
Add user to the project
* (Create and) Add user to project of specific service product. 
  If user already exists in HQ, will add it to the project. 
  If user not exists, will create a new user based on input information and then add it to the project. 
* HQ user and company have 2 levels of relationship, and the company of one user could be different between these 2 levels: 
  1. user belongs to company on account level. 
  2. user represents one company to participated in project on project level. 
  Parameter 'company_id' in this api is to setup the same relationship on both levels.


.. http:post:: accounts/{account_id}/projects/{project_id}/users


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param project_id: Required. Type: string. HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader service_type: Required. Type: string. single type allowed. field, glue or plan, etc. add user to a specific service project.. 


    :reqheader company_id: Required. Type: string. HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49; this user takes part in the service project as a member of some company.


    :reqheader email: Required. Type: string. max_length: 255; email format. e.g. autodesk@adsk.com; 
    If the user exists and 'uid' is filled, this parameter is optional. When creating a new user, this parameter is required. 


    :reqheader uid: Type: string. oxygen_id. e.g. 7RW6JZQ9YKGA; Used for querying user's existence. . 


    :reqheader role: Type: string. 'project_admin' means set the user as project admin, empty means set the user as project user. 


    :reqheader name: Type: string. max_length: 255; e.g. John Smith;. 


    :reqheader nickname: Type: string. max_length: 255; e.g. John Smith;. 


    :reqheader first_name: Type: string. max_length: 255; e.g. John;. 


    :reqheader last_name: Type: string. max_length: 255; e.g. Smith;. 


    :reqheader image_url: Type: string. max_length: 255; e.g. http://www.autodesk.com/image.jpg;. 


    :reqheader last_sign_in: Type: string. datetime format. e.g. 2014-11-04T08:01:20.169+00:00;. 


    :reqheader address_line_1: Type: string. max_length: 255; e.g. New York,US;. 


    :reqheader address_line_2: Type: string. max_length: 255; e.g. New York,US;. 


    :reqheader city: Type: string. max_length: 255; e.g. New York;. 


    :reqheader postal_code: Type: string. max_length: 255; e.g. 200120;. 


    :reqheader state_or_province: Type: string. max_length: 255; e.g. New York;. 


    :reqheader country: Type: string. max_length: 255; e.g. US;. 


    :reqheader phone: Type: string. max_length: 255; e.g. +8615618171506;. 


    :reqheader job_title: Type: string. max_length: 255;. 


    :reqheader industry: Type: string. max_length: 255;. 


    :reqheader about_me: Type: string. max_length: 255;. 


Status Codes:

    :statuscode 201: Created Successfully
    :statuscode 400: Bad Request
    :statuscode 403: Forbidden
    :statuscode 404: Not Found
    :statuscode 409: Conflict
    :statuscode 422: Unprocessable Entity
    :statuscode 500: Internal Server Error

Body Structure:
{
    "service_type": "field"
    "company_id":"14e95a5e-02eb-49aa-a39a-447d90544873",
    "email":"test.bim360hq@autodesk.com",
    "name":"Matt Hu",
    "nickname":"Matty",
    "first_name":"Matt",
    "last_name":"Hu"
    "status":"active",
    "uid": "",
    "role": "project_admin",
    "image_url": "/image/matthu",
    "last_sign_in": "2016-04-01",
    "address_line_1": "nowhere",
    "address_line_2": "nowhere",
    "city": "shanghai",
    "postal_code": "20000",
    "state_or_province": "shanghai",
    "country": "china",
    "phone": "1234567",
    "job_title": "software developer",
    "industry": "IT",
    "about_me": "nothing"
}

Request:
curl -H "Content-Type: application/json" -H "Authorization: Bearer hW0DvSvGgszPis1Yhot4c8kWW3NG" -X POST -d '{"service_type": "field","company_id":"14e95a5e-02eb-49aa-a39a-447d90544873","email":"test.bim360hq@autodesk.com","name":"Matt Hu","nickname":"Matty","first_name":"Matt","last_name":"Hu""status":"active","uid": "","role": "project_admin","image_url": "/image/matthu","last_sign_in": "2016-04-01","address_line_1": "nowhere","address_line_2": "nowhere","city": "shanghai","postal_code": "20000","state_or_province": "shanghai","country": "china","phone": "1234567","job_title": "software developer","industry": "IT","about_me": "nothing"}' https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/9dbb160e-b904-458b-bc5c-ed184687592d/projects/1e4bdc48-1bd7-4a4f-a91f-bd238cce5830/users

Response:
{"id":"79b51334-1127-4313-a0e1-4986b3e96c47","invite_id":null,"role":"project_user","created_at":"2016-04-07T08:45:51.063Z","updated_at":"2016-04-07T09:21:06.173Z","invite_url":null,"related_mail_id":null,"pseudo_unsync_resource_id":"741c63d2-4982-47b2-92b8-27babd2874a5","global_roles":null,"synced":false,"project_id":"1e4bdc48-1bd7-4a4f-a91f-bd238cce5830","company_id":"14e95a5e-02eb-49aa-a39a-447d90544873","company_name":"acme","email":"test.bim360hq@autodesk.com","name":"Matt Hu","nickname":"Matty","first_name":"Matt","last_name":"Hu","uid":null,"image_url":null,"last_sign_in":null,"address_line_1":null,"address_line_2":null,"city":null,"postal_code":"20000","state_or_province":"shanghai","country":"china","phone":"1234567","company":"autodesk","job_title":"software developer","industry":"IT","about_me":"nothing","system_user_status":null,"account_id":"9dbb160e-b904-458b-bc5c-ed184687592d","status":"inactive","status_reason":"pending","admin_phone":null}


