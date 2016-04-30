Companies#delete_project_company
Remove the partner company from the project
* This api will remove company from the project, company record still exists in the account after remove. 
* Cannot remove successfully if there are project user associated with it. So before remove project-company association, please check project users associated with project company.


.. http:delete:: accounts/{account_id}/projects/{project_id}/companies/{id}


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param project_id: Required. Type: string. HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param id: Required. Type: string. HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader service_type: Required. Type: string. single type allowed. field, glue or plan, etc.. 


Status Codes:

    :statuscode 200: Success
    :statuscode 400: Bad Request
    :statuscode 403: Forbidden
    :statuscode 404: Not Found
    :statuscode 409: Conflict
    :statuscode 422: Unprocessable Entity
    :statuscode 500: Internal Server Error

Request:
curl -H "Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA" -X DELETE https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies/f48fcbe8-822d-4ae1-91cb-fb132c5db014?service_type=doc_manager

Response:
//nothing in content