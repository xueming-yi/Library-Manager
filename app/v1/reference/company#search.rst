######################
GET search
######################

Search by specific fields

**********************
Resource Information
**********************

==========================   ============================================================
Method and URI               GET accounts/{account_id}/companies/search
Authentication Context       Apigee access token required
Data Formats                 JSON
==========================   ============================================================

***************
Request
***************

Headers
===============
================  =========  ========= ===========================================
HTTP Headers      Type       Required  Description
================  =========  ========= ===========================================
Authorization      string    Yes       OAuth 2 authorization header
Content-Type       string    Yes       Must be "application/json"
================  =========  ========= ===========================================

Body Structure
================

.. code-block:: json

  {
    "$schema": "http://json-schema.org/draft-04/schema#",
    "title": "company",
    "type": "object",
    "properties": {
      "account_id" : {
        "type": "uuid",
        "description": "HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49",
      },
      "name":{
        "type": "string",
        "description": "max_length: 255; e.g. Autodesk",
      }, 
      "partial":{
        "type": "string",
        "description": "true: fuzzy match, default: true",
      },
      "limit":{
        "type": "integer",
        "description": "set response array's size. Default size: 10. Default sort order is updated_at DESC..",
      },
      "offset":{
        "type": "integer",
        "description": "set offset of response array. Default value: 0. Default sort order is updated_at DESC..",
      },
    },
    "required": ["account_id"]
  }

=====================  =========  ========= ===========================================
Name                   Type       Required  Description
=====================  =========  ========= ===========================================
account_id             uuid       Yes       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
name                   string     No        max_length: 255; e.g. Autodesk;. 
partial                string     No        true: fuzzy match, default: true.
limit                  integer    No        set response array's size. Default size: 10. Default sort order is updated_at DESC..
offset                 integer    No        set offset of response array. Default value: 0. Default sort order is updated_at DESC.. 
=====================  =========  ========= ===========================================
  
********
Response
********

HTTP Status Code Summary
==========================

==========================  ====================================
Status Code                 Description      
==========================  ====================================
200 Success
201 Created Successfully    The request has been fulfilled, resulting in the creation of a new resource
400 Bad Request             Nonspecific error about the request prepared by the client
403 Forbidden               The request was a valid request, but the server is refusing to respond to it. 403 error semantically means "unauthorized", i.e. the user does not have the necessary permissions for the resource.
404 Not Found               The resource cannot be found according to the client provided resource URI
409 Conflict                The request could not be completed due to a conflict with the current state of the resource
500 Internal Server Error   To indicate server side problems
==========================  ====================================

Structure(200 OK)
====================

.. code-block:: json

  [
    {
      "id": "d966a8ef-e7d9-4706-aec7-e1324b3b54bc",
      "account_id": "91098a80-a5e6-4855-8ea6-edc1ae1bd3a5",
      "name": "company aixl 001",
      "trade": null,
      "category": null,
      "status": null,
      "project_size": null,
      "user_size": null,
      "address_line_1": "The Fifth Avenue",
      "address_line_2": "#301",
      "city": "New York",
      "postal_code": "10011",
      "state_or_province": "NY",
      "country": "US",
      "phone": "21212345678",
      "custom_properties": null,
      "deprecated_image_url": "http://www.aixl.com/logo.jpg",
      "website_url": "http://www.aixl.com",
      "description": null,
      "created_at": "2016-04-08T08:03:35.312Z",
      "updated_at": "2016-04-08T08:03:35.312Z",
      "image_file_name": null,
      "image_content_type": null,
      "image_file_size": null,
      "image_updated_at": null,
      "processing_image_key": null,
      "original_name": null,
      "erp_id": null,
      "tax_id": null
    },
    {
      "id": "1fcedb96-0a5c-4343-acc0-1aa3125bc2d1",
      "account_id": "b18a6658-5a29-458d-b344-266298080a34",
      "name": "S1459646542897_Trial",
      "trade": null,
      "category": "owner",
      "status": null,
      "project_size": 0,
      "user_size": 0,
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
      "created_at": "2016-04-03T01:15:36.514Z",
      "updated_at": "2016-05-04T01:58:03.998Z",
      "image_file_name": null,
      "image_content_type": null,
      "image_file_size": null,
      "image_updated_at": null,
      "processing_image_key": null,
      "original_name": null,
      "erp_id": null,
      "tax_id": null
    },
    ....
  ]
  
********
Examples
********

URL 
=====

https://developer.api.autodesk.com:443/hq-api/v1/accounts/{account_id}/companies/import

Request
=========

curl -H "Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA" -X GET https://developer.api.autodesk.com/hq-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/companies/search?name=new_creeated_compan&partial=true&limit=1&offset=0

Response 
==========

.. code-block:: json

  HTTP/1.1 201 Created
  Cache-Control: max-age=0, private, must-revalidate
  Content-Type: application/json; charset=utf-8

  [
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
    ...
  ]
