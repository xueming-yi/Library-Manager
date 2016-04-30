Companies#import_companies
Bulk import companies
* Company name should be unique under one account.


.. http:post:: accounts/{account_id}/companies/import


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader body: Type: array. in json. 


Status Codes:

    :statuscode 201: Created Successfully
    :statuscode 400: Bad Request
    :statuscode 403: Forbidden
    :statuscode 404: Not Found
    :statuscode 409: Conflict
    :statuscode 422: Unprocessable Entity
    :statuscode 500: Internal Server Error


Body Structure:
[{
  "name": "new_creeated_company2",
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
}, {
  "name": "new_creeated_company3",
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
}]


Request:
curl -H "Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA" -H "Content-Type: application/json" -X POST -d '[{"name":"new_creeated_company2","trade": "mh-trade","category": "owner","website_url": "mh-url","city": "Shanghai","country": "US","address_line_1": "Pudian Road","address_line_2": "Pudian Road","postal_code": "200012","erp_id": "123","tax_id": "123","phone": "1234567","description": "nothing here"},{"name":"new_creeated_company3","trade": "mh-trade","category": "owner","website_url": "mh-url","city": "Shanghai","country": "US","address_line_1": "Pudian Road","address_line_2": "Pudian Road","postal_code": "200012","erp_id": "123","tax_id": "123","phone": "1234567","description": "nothing here"}]' https://developer.api.autodesk.com:443/hq-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/companies/import

Response:
{"message": "success:2, failure:0"}