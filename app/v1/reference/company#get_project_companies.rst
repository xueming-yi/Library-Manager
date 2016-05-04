########################################
GET get_project_companies
########################################

Query the partner companies from the project
You may get different results with/without service_type
  1. If service_type is filled and correct, you will get all companies participated in the specific service project.
  2. If service_type is empty, you will get all companies associated with any service under the HQ project.

**********************
Resource Information
**********************

==========================   ============================================================
Method and URI               GET accounts/{account_id}/projects/{project_id}/companies
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
    "title": "company",
    "type": "object",
    "properties": {
      "account_id": {
        "type": "uuid",
        "description": "HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49",
      },
      "project_id": {
        "type": "uuid",
        "description": "HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49",
      },
      "service_type": {
        "type": "string",
        "description": "single type allowed. field, glue or plan, etc..",
      },
      "limit": {
        "type": "integer",
        "description": "set response array's size. Default size: 10. Default sort order is updated_at DESC..",
      },
      "offset": {
        "type": "integer",
        "description": "set offset of response array. Default value: 0. Default sort order is updated_at DESC..",
      },
    },
    "required": ["account_id", "project_id"]  
  }

=====================  ===========  ========= ===========================================
Attribute              Value Type   Required  Description
=====================  ===========  ========= ===========================================
account_id             uuid         YES       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
project_id             uuid         YES       HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
service_type           string       NO        single type allowed. field, glue or plan, etc..
limit                  integer      NO        set response array's size. Default size: 10. Default sort order is updated_at DESC..
offset                 integer      NO        set offset of response array. Default value: 0. Default sort order is updated_at DESC.. 
=====================  ===========  ========= ===========================================

********
Response
********

HTTP Status Code Summary
==========================

==========================  ====================================
Status Code                 Description      
==========================  ====================================
200 Success
201 Created                    The request has been fulfilled, resulting in the creation of a new resource
400 Bad Request              Nonspecific error about the request prepared by the client
403 Forbidden                The request was a valid request, but the server is refusing to respond to it. 403 error semantically means "unauthorized", i.e. the user does not have the necessary permissions for the resource.
404 Not Found                The resource cannot be found according to the client provided resource URI
409 Conflict                  The request could not be completed due to a conflict with the current state of the resource
422 Unprocessable Entity
500 Internal Server Error            To indicate server side problems
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
  
Request:

********
Examples
********

URL 
=====

https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies?service_type=doc_manager

Request
=========

curl -H "Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA" https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies?limit=1&service_type=doc_manager
  
Response 
==========

.. code-block:: json

  HTTP/1.1 201 GET
  Cache-Control: max-age=0, private, must-revalidate
  Content-Type: application/json; charset=utf-8

  [
    {
      "id":"4c7d27f3-517a-46d2-93b1-fe19f2f63fd9",
      "account_id":"4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74",
      "name":"Free-6",
      "trade":null,
      "category":"owner",
      "status":null,
      "project_size":2,
      "user_size":2,
      "address_line_1":null,
      "address_line_2":null,
      "city":null,
      "postal_code":null,
      "state_or_province":null,
      "country":"US",
      "phone":null,
      "custom_properties":null,
      "deprecated_image_url":null,
      "website_url":null,
      "description":null,
      "created_at":"2016-03-23T12:08:53.748Z",
      "updated_at":"2016-03-23T12:11:59.039Z",
      "image_file_name":null,
      "image_content_type":null,
      "image_file_size":null,
      "image_updated_at":null,
      "processing_image_key":null,
      "original_name":null,
      "erp_id":null,
      "tax_id":null,
      "oxygen_group_id":"957876"
    },
    ......
  ]
