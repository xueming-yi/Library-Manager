#######################################
POST Companies#create_project_company
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

Input Parameters
=================
=====================  =========  ========= ===========================================
Name                   Type       Required  Description
=====================  =========  ========= ===========================================
account_id             string     YES       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
project_id             string     YES       HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
service_type           string     YES       single type allowed. field, glue or plan, etc..
company_id             string     NO        expecting exists company id or new uuid to create a newcompany, both cases will create association between project and company
name                   string     NO        expecting name to create a new company when cannot find company bycompany_id, it is required in such case.. 

trade                  string     NO        max_length: 255;.
category               string     NO        max_length: 255;.
image_url              string     NO        max_length: 255; e.g. http://www.autodesk.com/image.jpg;.
website_url            string     NO        max_length: 255; e.g. http://www.autodesk.com;.
description            string     NO        max_length: 255;.
address_line_1         string     NO        max_length: 255; e.g. New York,US;.
address_line_2         string     NO        max_length: 255; e.g. New York,US;.
city                   string     NO        max_length: 255; e.g. New York;.
postal_code            string     NO        max_length: 255; e.g. 200120;.
state_or_province      string     NO        max_length: 255; e.g. New York;.
country                string     NO        max_length: 255; e.g. US;.
phone                  string     NO        max_length: 255; e.g. +8615618171506;.
custom_properties      string     NO        max_length: 255;.
erp_id                 string     NO        Support free form text entry. Used to associate a company in BIM 360 with the company data in ERP system.. 
tax_id                 string     NO        Support free form text entry. Used to associate a company in BIM 360 with the company data from public and industry sources.. 
=====================  =========  ========= ===========================================

Body Structure
================

.. code-block:: json
    
  {
    "title": "company",
    "type": "object",
    "properties": {
      "account_id": {
        "type": "string",
      },
      "project_id": {
        "type": "string",
      },
      "service_type": {
        "type": "string",
      },
      "name": {
        "type": "string",
      },
      "trade": {
        "type": "string",
      },
      "category": {
        "type": "string",
      },
      "website_url": {
        "type": "string",
      },
      "city": {
        "type": "string",
      },
      "country": {
        "type": "string",
      },
      "address_line_1": {
        "type": "string",
      },
      "address_line_2": {
        "type": "string",
      },
      "postal_code": {
        "type": "string",
      },
      "erp_id": {
        "type": "string",
      },
      "tax_id": {
        "type": "string",
      },
      "phone": {
        "type": "string",
      },
      "description": {
        "type": "string",
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
          "type": "number"
       },
       "tax_id": {
          "type": "number"
       },
    },
  }

Request:

********
Examples
********

URL 
=====

https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies

Request
=========

.. code-block:: json

  POST /ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies HTTP/1.1
  Content-Type: application/json
  Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA
  
  {
    "account_id": "4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74",
    "projects": "5ad6573d-ff9e-4329-ae3e-b921413112e7",
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
