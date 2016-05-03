##########################
PATCH Companies#add_image
##########################

Add image to a company
After calling this, you need to get company info again to see the updated image information.

**********************
Resource Information
**********************

==========================   ============================================================
Method and URI               PATCH accounts/{account_id}/companies/{id}/image
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
id                     string     YES       HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;. 
chunk                  file                 image file for company.
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
    },
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


********
Examples
********

URL 
=====

https://developer-dev.api.autodesk.com/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/companies/f48fcbe8-822d-4ae1-91cb-fb132c5db014/image

Request
========= 

.. code-block:: json

  POST /hq-api/v1/accounts/91098a80-a5e6-4855-8ea6-edc1ae1bd3a5/companies HTTP/1.1
  Content-Type: application/json
  Authorization: Bearer mVHUgDhBl29Ou30zSsTSMBoMGbBs

  {
    "account_id": "4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74",
    "id": "f48fcbe8-822d-4ae1-91cb-fb132c5db014",
    "chunk": "your/path/image.png"
  }

Response
=========

.. code-block:: json

  HTTP/1.1 200 Created
  Cache-Control: max-age=0, private, must-revalidate
  Content-Type: application/json; charset=utf-8

  {
    "id": "f48fcbe8-822d-4ae1-91cb-fb132c5db014",
    "account_id": "4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74",
    "name": "company aixl 001",
    "trade": null,
    "category": "owner",
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
    "image_file_name": "da.png",
    "image_content_type": "image/jpeg",
    "image_file_size": 44077,
    "image_updated_at": "2016-04-30T04:40:26.136Z",
    "processing_image_key": "image-5dd29386b5384aeba982b52a90feef84",
    "original_name": null,
    "erp_id": null,
    "tax_id": null
   }
