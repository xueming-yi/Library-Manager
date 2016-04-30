PATCH /accounts/{account_id}/projects/{project_id}/users/{user_id}
Update a project user's role & company_id
* Update user in project of specific service product. 
* HQ user and company have 2 levels of relationship, and the company of one user could be different between these 2 levels: 
  1. user belongs to company on account level. 
  2. user represents one company to participated in project on project level. 
  Parameter 'company_id' in this api is to setup the same relationship on both levels.


.. http:patch:: accounts/{account_id}/projects/{project_id}/users/{user_id}


    :param account_id: Required. Type: string. account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param project_id: Required. Type: string. project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param user_id: Required. Type: string. user_id, UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader service_type: Required. Type: string. single type allowed. field, glue or plan, etc. update user in the specific service project only.. 


    :reqheader role: Type: string. available options: {project_admin, project user}


    :reqheader company_id: Type: string. company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. The user gets changed to another company when participating in the project.


Status Codes:

    :statuscode 200: Success
    :statuscode 400: Bad Request
    :statuscode 403: Forbidden
    :statuscode 404: Not Found
    :statuscode 409: Conflict
    :statuscode 422: Unprocessable Entity
    :statuscode 500: Internal Server Error

Body Structure:
{
    "service_type": "field",
    "email": "auto_daisy_6@sina.com",
    "role": "project_admin",
    "company_id": "14e95a5e-02eb-49aa-a39a-447d90544873"
}

Request:
curl -H "Content-Type: application/json" -H "Authorization: Bearer XZvCJNhdxESsBRIH28MfLf2hKL5O" -X PATCH -d '{"service_type":"field","email": "auto_daisy_6@sina.com","role":"project_admin","company_id":"14e95a5e-02eb-49aa-a39a-447d90544873"}' https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/9dbb160e-b904-458b-bc5c-ed184687592d/projects/1e4bdc48-1bd7-4a4f-a91f-bd238cce5830/users/bd0cae7c-b737-40e1-9e39-efb112a69aaa

Response:
{"id":"bd0cae7c-b737-40e1-9e39-efb112a69aaa","invite_id":null,"role":"project_admin","created_at":"2016-04-07T06:59:35.891Z","updated_at":"2016-04-07T08:28:34.933Z","invite_url":"https://bim360field-qa.autodesk.com/auth/invite/083200806b764592a22b990e1124e2f4","related_mail_id":null,"pseudo_unsync_resource_id":"12dcce2b-51e9-4a35-93f2-3759ee61bafc","global_roles":null,"synced":true,"project_id":"1e4bdc48-1bd7-4a4f-a91f-bd238cce5830","company_id":"14e95a5e-02eb-49aa-a39a-447d90544873","company_name":"New Company","email":"auto_daisy_6@sina.com","name":"six daisy","nickname":"six daisy","first_name":"six","last_name":"daisy","uid":"MKVHMSHTTMXC","image_url":"https://api-staging.autodesk.com/content/identity/1.0.2118.382487.761/z/Content/images/icons/user_X50.png","last_sign_in":"2016-04-07 07:42:50.922317","address_line_1":"","address_line_2":"","city":"","postal_code":"","state_or_province":"","country":"US","phone":"\"\"","company":"acme","job_title":"","industry":"","about_me":"","system_user_status":null,"account_id":"9dbb160e-b904-458b-bc5c-ed184687592d","status":"inactive","status_reason":"disabled","admin_phone":null}

