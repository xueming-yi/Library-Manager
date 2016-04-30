
Companies#create_project_company
Add partner company to the project
* Company name should be unique under one account.
(Create and) Add company to project of specific service product. 
If company already exists in HQ, will add it to the project. 
If company not exists, will create a new company based on input information and then add it to the project. 


.. http:post:: accounts/{account_id}/projects/{project_id}/companies


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param project_id: Required. Type: string. HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader service_type: Required. Type: string. single type allowed. field, glue or plan, etc.. 


    :reqheader company_id: Type: string. expecting exists company id or new uuid to create a newcompany, both cases will create association between project and company. 


    :reqheader name: Type: string. expecting name to create a new company when cannot find company bycompany_id, it is required in such case.. 


    :reqheader trade: Type: string. max_length: 255;. 


    :reqheader category: Type: string. max_length: 255;. 


    :reqheader image_url: Type: string. max_length: 255; e.g. http://www.autodesk.com/image.jpg;. 


    :reqheader website_url: Type: string. max_length: 255; e.g. http://www.autodesk.com;. 


    :reqheader description: Type: string. max_length: 255;. 


    :reqheader address_line_1: Type: string. max_length: 255; e.g. New York,US;. 


    :reqheader address_line_2: Type: string. max_length: 255; e.g. New York,US;. 


    :reqheader city: Type: string. max_length: 255; e.g. New York;. 


    :reqheader postal_code: Type: string. max_length: 255; e.g. 200120;. 


    :reqheader state_or_province: Type: string. max_length: 255; e.g. New York;. 


    :reqheader country: Type: string. max_length: 255; e.g. US;. 


    :reqheader phone: Type: string. max_length: 255; e.g. +8615618171506;. 


    :reqheader custom_properties: Type: string. max_length: 255;. 


    :reqheader erp_id: Type: string. Support free form text entry. Used to associate a company in BIM 360 with the company data in ERP system.. 


    :reqheader tax_id: Type: string. Support free form text entry. Used to associate a company in BIM 360 with the company data from public and industry sources.. 


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
        "service_type": "doc_manager",
        "name":"new_creeated_company",
        "trade": "mh-trade",
        "category": "owner",
        "website_url": "mh-url",
        "city": "Shanghai",
        "country": "US",
        "address_line_1": "Pudian Road",
        "address_line_2": "Pudian Road",
        "postal_code": "200012",
        "erp_id": "123",
        "tax_id": "123",
        "phone": "1234567",
        "description": "nothing here"
      }

Request:

curl -H "Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA" -H "Content-Type: application/json" -X POST -d '{"service_type": "doc_manager","name":"new_creeated_company","trade": "mh-trade","category": "owner""website_url": "mh-url","city": "Shanghai","country": "US","address_line_1": "Pudian Road","address_line_2": "Pudian Road","postal_code": "200012","erp_id": "123","tax_id": "123","phone": "1234567","description": "nothing here"}' https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies


Response:
{
  "id": "f48fcbe8-822d-4ae1-91cb-fb132c5db014",
  "account_id": "4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74",
  "name": "new_creeated_company",
  "trade": "mh-trade",
  "category": "owner",
  "status": null,
  "project_size": null,
  "user_size": null,
  "address_line_1": "Pudian Road",
  "address_line_2": "Pudian Road",
  "city": "Shanghai",
  "postal_code": "200012",
  "state_or_province": null,
  "country": "US",
  "phone": "1234567",
  "custom_properties": null,
  "deprecated_image_url": null,
  "website_url": "mh-url",
  "description": "nothing here",
  "created_at": "2016-04-25T06:42:35.940Z",
  "updated_at": "2016-04-25T06:42:35.940Z",
  "image_file_name": null,
  "image_content_type": null,
  "image_file_size": null,
  "image_updated_at": null,
  "processing_image_key": null,
  "original_name": null,
  "erp_id": "123",
  "tax_id": "123"
}







