######################################
GET Companies#show_project_company
######################################

Query the partner company from the project
You may get different results for leave parameter 'service_type' empty or fill in right value:
  1. If service_type is filled and correct, you will get the company participated in specific service project.
  2. If service_type is empty, will get the company participated in all services under the HQ project.

**********************
Resource Information
**********************

==========================   ============================================================
Method and URI               GET accounts/{account_id}/projects/{project_id}/companies/{company_id
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
account_id             string     Yes       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 
project_id             string     Yes       HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
company_id             string     Yes       HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
service_type           string     No        single type allowed. field, glue or plan, etc.. 
=====================  =========  ========= ===========================================

Body Structure
================

.. code-block:: json

  {
    "title": "company",
    "type": "object",
    "properties": {
      "account_id":{
        "type": "string",
      }, 
      "project_id":{
        "type": "string",
      },
      "company_id":{
        "type": "string",
      },
      "service_type":{
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
200 Success
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
        "type": "string"
      },
      "tax_id": {
        "type": "string"
      },
    }, 
  }

********
Examples
********

URL 
=====

https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies/4c7d27f3-517a-46d2-93b1-fe19f2f63fd9?service_type=doc_manager

Request
========= 

.. code-block:: json

  GET /ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies/4c7d27f3-517a-46d2-93b1-fe19f2f63fd9?service_type=doc_manager HTTP/1.1
  Content-Type: application/json
  Authorization: Bearer mVHUgDhBl29Ou30zSsTSMBoMGbBs
  
  {
    "account_id": "4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74",
    "project_id": "5ad6573d-ff9e-4329-ae3e-b921413112e7",
    "company_id": "4c7d27f3-517a-46d2-93b1-fe19f2f63fd9",
    "service_type": "doc_manager",
  }


Response 
==========

.. code-block:: json

  {
    "id": "4c7d27f3-517a-46d2-93b1-fe19f2f63fd9",
    "account_id": "4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74",
    "name": "Free-6",
    "trade": null,
    "category": "owner",
    "status": null,
    "project_size": 2,
    "user_size": 2,
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
    "created_at": "2016-03-23T12:08:53.748Z",
    "updated_at": "2016-03-23T12:11:59.039Z",
    "image_file_name": null,
    "image_content_type": null,
    "image_file_size": null,
    "image_updated_at": null,
    "processing_image_key": null,
    "original_name": null,
    "erp_id": null,
    "tax_id": null,
    "oxygen_group_id": "957876"
  }
