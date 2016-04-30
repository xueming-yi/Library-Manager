Companies#show_project_company
Query the partner company from the project
You may get different results for leave parameter 'service_type' empty or fill in right value:
  1. If service_type is filled and correct, you will get the company participated in specific service project.
  2. If service_type is empty, will get the company participated in all services under the HQ project.


.. http:get:: accounts/{account_id}/projects/{project_id}/companies/{company_id}


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param project_id: Required. Type: string. HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param company_id: Required. Type: string. HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader service_type: Type: string. single type allowed. field, glue or plan, etc.. 


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
curl -H "Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA" https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies/4c7d27f3-517a-46d2-93b1-fe19f2f63fd9?service_type=doc_manager



Response:
{
  "id": "4c7d27f3-517a-46d2-93b1-fe19f2f63fd9",
  "account_id": "4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74",
  "name": "Free-6",
  "trade": null,
  "category": "owner",
  "status": null,
  "project_size": 2,
  "user_size": 2,
  "address_line_1": null,
  "address_line_2": null,
  "city": null,
  "postal_code": null,
  "state_or_province": null,
  "country": "US",
  "phone": null,
  "custom_properties": null,
  "deprecated_image_url": null,
  "website_url": null,
  "description": null,
  "created_at": "2016-03-23T12:08:53.748Z",
  "updated_at": "2016-03-23T12:11:59.039Z",
  "image_file_name": null,
  "image_content_type": null,
  "image_file_size": null,
  "image_updated_at": null,
  "processing_image_key": null,
  "original_name": null,
  "erp_id": null,
  "tax_id": null,
  "oxygen_group_id": "957876"
}