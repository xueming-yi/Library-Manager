######################################
GET show_project_company
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

Body Structure
================

.. code-block:: json

  {
    "$schema": "http://json-schema.org/draft-04/schema#",
    "title": "company",
    "type": "object",
    "properties": {
      "account_id":{
        "type": "uuid",
        "description": "HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;",
      }, 
      "project_id":{
        "type": "uuid",
        "description": "HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49",
      },
      "company_id":{
        "type": "uuid",
        "description": "HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49",
      },
      "service_type":{
        "type": "string",
        "description": "single type allowed. field, glue or plan, etc.. ",
      },
    },
    "required": ["account_id", "project_id", "company_id"]
  }

=====================  ===========  ========= ===========================================
Attribute              Value Type   Required  Description
=====================  ===========  ========= ===========================================
account_id             uuid         Yes       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 
project_id             uuid         Yes       HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
company_id             uuid         Yes       HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
service_type           string       No        single type allowed. field, glue or plan, etc.. 
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
500 Internal Server Error            To indicate server side problems
==========================  ====================================

Structure(200 OK)
====================

.. code-block:: json

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
    "erp_id": "456",
    "tax_id": "123"
  }

********
Examples
********

URL 
=====

https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/{account_id}/projects/{project_id}/companies/{company_id}?service_type=doc_manager

Request
========= 

curl -H "Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA" https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies/4c7d27f3-517a-46d2-93b1-fe19f2f63fd9?service_type=doc_manager

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
