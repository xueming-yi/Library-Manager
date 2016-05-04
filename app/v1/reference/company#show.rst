#######################
GET Show
#######################

Query the partner company details

**********************
Resource Information
**********************

========================== ============================================================
Method and URI                    GET accounts/{account_id}/companies/{company_id}
Authentication Context            Apigee access token required
Data Formats                      JSON
========================== ============================================================

***************
Request
***************

Headers
===============

================  =========  ========= ===========================================
HTTP Headers          Type   Required    Description
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
        "description": "HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49",
      },
      "company_id":{
        "type": "uuid",
        "description": "HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49",
      },
    },
    "required": ["account_id", "company_id"]
  }

================  ===========  ========= ===========================================
Attribute         Value Type   Required    Description
================  ===========  ========= ===========================================
account_id         uuid        Yes       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49
company_id         uuid        Yes       HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49
================  ===========  ========= ===========================================

********
Response
********

HTTP Status Code Summary
==========================

==========================  ====================================
Status Code                 Description      
==========================  ====================================
200 OK                      Indicate nonspecific success. Must not be used to communicate errors in response body.
400 Bad Request             Nonspecific error about the request prepared by the client
403 Forbidden               The request was a valid request, but the server is refusing to respond to it. 403 error semantically means "unauthorized", i.e. the user does not have the necessary permissions for the resource.
404 Not Found               The resource cannot be found according to the client provided resource URI
409 Conflict                The request could not be completed due to a conflict with the current state of the resource
500 Internal Server Error   To indicate server side problems
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
    "erp_id": "3333",
    "tax_id": "111"
  }

********
Examples
********

URL 
=====

https://developer.api.autodesk.com/hq-api/v1/accounts/{account_id}/companies/{company_id}

Request
========= 

curl -H "Authorization: Bearer mVHUgDhBl29Ou30zSsTSMBoMGbBs" https://developer.api.autodesk.com/hq-api/v1/accounts/91098a80-a5e6-4855-8ea6-edc1ae1bd3a5/companies/d966a8ef-e7d9-4706-aec7-e1324b3b54bc

Response 
==========

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
    "erp_id": null,
    "tax_id": null
  }
