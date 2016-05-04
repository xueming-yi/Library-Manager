#######################################
POST create_project_company
#######################################

Add partner company to the project
* Company name should be unique under one account.
(Create and) Add company to project of specific service product. 
If company already exists in HQ, will add it to the project. 
If company not exists, will create a new company based on input information and then add it to the project. 

**********************
Resource Information
**********************

==========================   ============================================================
Method and URI               POST accounts/{account_id}/projects/{project_id}/companies
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
      "account_id": {
        "type": "uuid",
        "description": "HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;",
      },
      "project_id": {
        "type": "uuid",
        "description": "HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;",
      },
      "service_type": {
        "type": "string",
        "description": "single type allowed. field, glue or plan, etc..",
      },
      "company_id": {
        "type": "string",
        "description": "expecting exists company id or new uuid to create a newcompany, both cases will create association between project and company",
      },
      "name": {
        "type": "string",
        "description": "expecting name to create a new company when cannot find company bycompany_id, it is required in such case.. ",
      },
      "trade": {
        "type": "string",
        "description": "max_length: 255;.",
      },
      "category": {
        "type": "string",
        "description": "max_length: 255;.",
      },
      "website_url": {
        "type": "string",
        "description": "max_length: 255; e.g. http://www.autodesk.com;.",
      },
      "city": {
        "type": "string",
        "description": "max_length: 255; e.g. New York;.",
      },
      "country": {
        "type": "string",
        "description": "max_length: 255; e.g. US;.",
      },
      "address_line_1": {
        "type": "string",
        "description": "max_length: 255; e.g. New York,US;.",
      },
      "address_line_2": {
        "type": "string",
        "description": "max_length: 255; e.g. New York,US;.",
      },
      "postal_code": {
        "type": "string",
        "description": "max_length: 255; e.g. 200120;.",
      },
      "erp_id": {
        "type": "string",
        "description": "Support free form text entry. Used to associate a company in BIM 360 with the company data in ERP system.. ",
      },
      "tax_id": {
        "type": "string",
        "description": "Support free form text entry. Used to associate a company in BIM 360 with the company data from public and industry sources.. ",
      },
      "phone": {
        "type": "string",
        "description": "max_length: 255; e.g. +8615618171506",
      },
      "description": {
        "type": "string",
        "description": "max_length: 255;.",
      },
      "image_url": {
        "type": "string",
        "description": "max_length: 255; e.g. http://www.autodesk.com/image.jpg",
      },
    },
    "required": ["account_id", "project_id", "service_type"]
  }

=====================  ===========  ========= ===========================================
Attribute              value Type   Required  Description
=====================  ===========  ========= ===========================================
account_id             uuid         YES       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
project_id             uuid         YES       HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
service_type           string       YES       single type allowed. field, glue or plan, etc..
company_id             uuid         NO        expecting exists company id or new uuid to create a newcompany, both cases will create association between project and company
name                   string       NO        expecting name to create a new company when cannot find company bycompany_id, it is required in such case.. 

trade                  string       NO        max_length: 255;.
category               string       NO        max_length: 255;.
image_url              string       NO        max_length: 255; e.g. http://www.autodesk.com/image.jpg;.
website_url            string       NO        max_length: 255; e.g. http://www.autodesk.com;.
description            string       NO        max_length: 255;.
address_line_1         string       NO        max_length: 255; e.g. New York,US;.
address_line_2         string       NO        max_length: 255; e.g. New York,US;.
city                   string       NO        max_length: 255; e.g. New York;.
postal_code            string       NO        max_length: 255; e.g. 200120;.
state_or_province      string       NO        max_length: 255; e.g. New York;.
country                string       NO        max_length: 255; e.g. US;.
phone                  string       NO        max_length: 255; e.g. +8615618171506;.
custom_properties      string       NO        max_length: 255;.
erp_id                 string       NO        Support free form text entry. Used to associate a company in BIM 360 with the company data in ERP system.. 
tax_id                 string       NO        Support free form text entry. Used to associate a company in BIM 360 with the company data from public and industry sources.. 
=====================  ===========  ========= ===========================================

********
Response
********

HTTP Status Code Summary
==========================

==========================  ====================================
Status Code                 Description      
==========================  ====================================
201 Created                    The request has been fulfilled, resulting in the creation of a new resource
400 Bad Request              Nonspecific error about the request prepared by the client
403 Forbidden                The request was a valid request, but the server is refusing to respond to it. 403 error semantically means "unauthorized", i.e. the user does not have the necessary permissions for the resource.
404 Not Found                The resource cannot be found according to the client provided resource URI
409 Conflict                  The request could not be completed due to a conflict with the current state of the resource
500 Internal Server Error            To indicate server side problems
==========================  ====================================

Structure(200 OK)
====================

.. code-block:: json

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

Request:

********
Examples
********

URL 
=====

https://developer-dev.api.autodesk.com:443/ea-api-dev/v1/accounts/{account_id}/projects/{project_id}/companies

Request
=========

curl -H "Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA" -H "Content-Type: application/json" -X POST -d '{"service_type": "doc_manager","name":"new_creeated_company","trade": "mh-trade","category": "owner""website_url": "mh-url","city": "Shanghai","country": "US","address_line_1": "Pudian Road","address_line_2": "Pudian Road","postal_code": "200012","erp_id": "123","tax_id": "123","phone": "1234567","description": "nothing here"}' https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies

Response 
==========

.. code-block:: json

  HTTP/1.1 201 Created
  Cache-Control: max-age=0, private, must-revalidate
  Content-Type: application/json; charset=utf-8
  
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
