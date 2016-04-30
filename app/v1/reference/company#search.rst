Companies#search
Search by specific fields


.. http:get:: accounts/{account_id}/companies/search


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader name: Type: string. max_length: 255; e.g. Autodesk;. 


    :reqheader partial: Type: string. true: fuzzy match, default: true. 


    :reqheader limit: Type: integer. set response array's size. Default size: 10. Default sort order is updated_at DESC.. 


    :reqheader offset: Type: integer. set offset of response array. Default value: 0. Default sort order is updated_at DESC.. 


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
curl -H "Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA" -X GET https://developer.api.autodesk.com/hq-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/companies/search?name=new_creeated_compan&partial=true&limit=1&offset=0


Response:
[{
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
}]