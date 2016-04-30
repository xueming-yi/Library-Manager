POST /accounts/{account_id}/users/import
Bulk import users
HQ user and company have 2 levels of relationship, and the company of one user could be different between these 2 levels: 
  1. user belongs to company on account level. 
  2. user represents one company to participated in project on project level. 
  Parameter 'company_id' in this api is to setup relationship on the first level only. 
* Parameter 'status' is for data migration only. Possible value of 'status' could be: 
  'inactive' means 'disabled', 'active' means 'active'. Default value: 'pending'.



.. http:post:: accounts/{account_id}/users/import


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader body: Type: array. . 


Status Codes:

    :statuscode 201: Created Successfully
    :statuscode 400: Bad Request
    :statuscode 403: Forbidden
    :statuscode 404: Not Found
    :statuscode 409: Conflict
    :statuscode 422: Unprocessable Entity
    :statuscode 500: Internal Server Error

Body Structure:
[
  {
    "email": "shuai.hu@autodesk.com",
    "name": "Matt Hu",
    "nickname": "Matty",
    "first_name": "Matt",
    "last_name": "Matt",
    "uid": "",
    "image_url": "/image/matthu",
    "last_sign_in": "2016-03-01",
    "address_line_1": "nowhere",
    "address_line_2": "nowhere",
    "city": "shanghai",
    "postal_code": "20000",
    "state_or_province": "shanghai",
    "country": "china",
    "phone": "1234567",
    "company": "autodesk",
    "job_title": "software developer",
    "industry": "IT",
    "about_me": "nothing",
    "company_id": "14e95a5e-02eb-49aa-a39a-447d90544873",
    "status": "active"
  }
]

Request:
curl -H "Content-Type: application/json" -H "Authorization: Bearer L0gPWdz8gE1NwiH2xTQtexlxk66b" -X POST -d '
[{"email": "shuai.hu@autodesk.com","name": "Matt Hu","nickname": "Matty","first_name": "Matt","last_name": "Hu","uid": "","image_url": "/image/matthu","last_sign_in": "2016-03-01", "address_line_1": "nowhere","address_line_2": "nowhere","city": "shanghai","postal_code": "20000","state_or_province": "shanghai","country": "china","phone": "1234567","company": "autodesk", "job_title": "software developer","industry": "IT", "about_me": "nothing","company_id": "14e95a5e-02eb-49aa-a39a-447d90544873","status": "active"}]' https://developer-dev.api.autodesk.com/ea-api/v1/accounts/9dbb160e-b904-458b-bc5c-ed184687592d/users/import

Response:
{"message":"success:1, failure:0"}