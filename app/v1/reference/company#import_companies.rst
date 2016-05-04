###############################
POST import_companies
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

Body Structure
================

.. code-block:: json

  {
    "$schema": "http://json-schema.org/draft-04/schema#",
    "title": "company",
    "type": "object",
    "properties": {
      "name":{
        "account_id": "uuid",
        "description": "HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49",
      }, 
      "body":{
        "type": "array",
        "description": "in json",
      },
    },
    "required": ["account_id", "body"]
  }

=====================  ===========  ========= ===========================================
Attribute              Value Type   Required  Description
=====================  ===========  ========= ===========================================
account_id             string       Yes       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 
body                   array        Yes       in json. 
=====================  ===========  ========= ===========================================

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
    },
    {
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

curl -H "Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA" -H "Content-Type: application/json" -X POST -d '[{"name":"new_creeated_company2","trade": "mh-trade","category": "owner","website_url": "mh-url","city": "Shanghai","country": "US","address_line_1": "Pudian Road","address_line_2": "Pudian Road","postal_code": "200012","erp_id": "123","tax_id": "123","phone": "1234567","description": "nothing here"},{"name":"new_creeated_company3","trade": "mh-trade","category": "owner","website_url": "mh-url","city": "Shanghai","country": "US","address_line_1": "Pudian Road","address_line_2": "Pudian Road","postal_code": "200012","erp_id": "123","tax_id": "123","phone": "1234567","description": "nothing here"}]' https://developer.api.autodesk.com:443/hq-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/companies/import

Response 
==========

.. code-block:: json

  HTTP/1.1 201 Created
  Cache-Control: max-age=0, private, must-revalidate
  Content-Type: application/json; charset=utf-8

  {
    "message": "success:2, failure:0"
  }
