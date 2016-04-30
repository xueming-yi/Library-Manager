Companies#add_image
Add image to a company
After calling this, you need to get company info again to see the updated image information.


.. http:patch:: accounts/{account_id}/companies/{id}/image


    :param account_id: Required. Type: string. HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :param id: Required. Type: string. HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 


    :reqheader chunk: Type: file. image file for company. 


Status Codes:

    :statuscode 200: Success
    :statuscode 201: Created
    :statuscode 400: Bad Request
    :statuscode 403: Forbidden
    :statuscode 404: Not Found
    :statuscode 409: Conflict
    :statuscode 422: Unprocessable Entity
    :statuscode 500: Internal Server Error

curl -H "Authorization: Bearer EN9jwCkXhWluES9Aqacoh3OP5LaV" -H "Content-Type: image/png" -X POST -v -include --form "chunk=@/Users/shuaihu/Downloads/demo.png" https://developer-dev.api.autodesk.com/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/companies/f48fcbe8-822d-4ae1-91cb-fb132c5db014/image


Response:
{
  "id": "f48fcbe8-822d-4ae1-91cb-fb132c5db014",
  "account_id": "4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74",
  "name": "new_creeated_company",
  "trade": "mh-trade",
  "category": null,
  "status": null,
  "project_size": 0,
  "user_size": null,
  "address_line_1": null,
  "address_line_2": null,
  "city": "Shanghai",
  "postal_code": null,
  "state_or_province": null,
  "country": "US",
  "phone": null,
  "custom_properties": null,
  "deprecated_image_url": null,
  "website_url": "mh-url",
  "description": null,
  "created_at": "2016-04-25T06:42:35.940Z",
  "updated_at": "2016-04-25T07:02:45.574Z",
  "image_file_name": null,
  "image_content_type": null,
  "image_file_size": null,
  "image_updated_at": null,
  "processing_image_key": null,
  "original_name": null,
  "erp_id": null,
  "tax_id": null
}