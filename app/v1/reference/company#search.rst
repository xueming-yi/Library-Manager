######################
GET Companies#search
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

Input Parameters
=================
=====================  =========  ========= ===========================================
Name                   Type       Required  Description
=====================  =========  ========= ===========================================
account_id             string     YES       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
name                   string     NO        max_length: 255; e.g. Autodesk;. 
partial                string     NO        true: fuzzy match, default: true.
limit                  integer    NO        set response array's size. Default size: 10. Default sort order is updated_at DESC..
offset                 integer    NO        set offset of response array. Default value: 0. Default sort order is updated_at DESC.. 
=====================  =========  ========= ===========================================

Body Structure
================

.. code-block:: json

  {
    "title": "company",
    "type": "object",
    "properties": {
      "account_id" : {
        "type": "string",
      },
      "name":{
        "type": "string",
      }, 
      "partial":{
        "type": "array",
      },
      "limit":{
        "type": "integer",
      },
      "offset":{
        "type": "integer",
      },
    }
  }
  
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
      "title": "Company",
      "type": "object",
      "properties": {
        "id":{
          "description": "The unique identifier for a product",
          "type": "string"
         },
         "account_id":{
           "description": "The unique identifier for a product",
           "type": "string"
         },
         "name": {
           "type": "string"
         },
         "trade": {
           "type": "string"
         },
         "category": {
           "type": "string"
         },
         "status": {
           "type": "string"
         },
         "project_size": {
           "type": "string"
         },
         "user_size": {
           "type": "string"
         },
         "address_line_1": {
           "type": "string"
         },
         "address_line_2": {
           "type": "string"
         },
         "city": {
           "type": "string"
         },
         "postal_code": {
           "type": "string"
         },
         "state_or_province": {
           "type": "string"
         },
         "country": {
           "type": "string"
         },
         "phone": {
           "type": "string"
         },
         "custom_properties": {
           "type": "string"
         },
         "deprecated_image_url": {
           "type": "string"
         },
         "website_url": {
           "type": "string"
         },
         "description": {
           "type": "string"
         },
         "created_at": {
           "type": "datetime"
         },
         "updated_at": {
           "type": "datetime"
         },
         "image_file_name": {
           "type": "string"
         },
         "image_content_type": {
           "type": "string"
         },
         "image_file_size": {
           "type": "string"
         },
         "image_updated_at": {
           "type": "datatime"
         },
         "processing_image_key": {
           "type": "string"
         },
         "original_name": {
           "type": "string"
         },
         "erp_id": {
           "type": "string"
         },
         "tax_id": {
           "type": "string"
         },
      },
    },
    .......
  ]
  
********
Examples
********

URL 
=====

https://developer.api.autodesk.com:443/hq-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/companies/import

Request
=========
.. code-block:: json

  GET /hq-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/companies/search HTTP/1.1
  Content-Type: application/json
  Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA
  
  {
    "account_id": "4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74"
    "name": "new_creeated_compan",
    "partial": true,
    "limit": 1,
    "offset": 0
  }

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
  ]
