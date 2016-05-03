###############################
POST Companies#import_companies
###############################

Bulk import companies
* Company name should be unique under one account.

**********************
Resource Information
**********************

==========================   ============================================================
Method and URI               POST accounts/{account_id}/companies/import
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
body                   array      YES       in json. 
=====================  =========  ========= ===========================================

Body Structure
================

.. code-block:: json

  {
    "title": "company",
    "type": "object",
    "properties": {
      "name":{
        "account_id": "string",
      }, 
      "body":{
        "type": "array",
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
    }
    ......
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

  POST /hq-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/companies/import HTTP/1.1
  Content-Type: application/json
  Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA
 
  [
    {
      "name":"new_creeated_company2",
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
    },
    {
      "name":"new_creeated_company3",
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
  ]

Response 
==========

.. code-block:: json

  HTTP/1.1 201 Created
  Cache-Control: max-age=0, private, must-revalidate
  Content-Type: application/json; charset=utf-8

  {
    "message": "success:2, failure:0"
  }
