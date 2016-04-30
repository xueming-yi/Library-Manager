=======================
PATCH / update
=======================
Update the partner company property
Company name should be unique under one account.

=====================
Resource Information
=====================
========================== ============================================================
Method and URI                    PATCH accounts/{account_id}/companies/{company_id}
Authentication Context            Apigee access token required
Data Formats                      JSON
========================== ============================================================

=====================
Request
=====================

* HTTP Headers

================  =========  ========= ===========================================
HTTP Headers          Type   Required    Description
================  =========  ========= ===========================================
Authorization      string    Yes       OAuth 2 authorization header
Content-Type       string    Yes       Must be "application/json"
================  =========  ========= ===========================================


* Input Parameters

===================  =========  ========= ===========================================
Name                   Type     Required   Description
===================  =========  ========= ===========================================
account_id           string     Yes       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
id                   string     Yes       HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
name                 string     No        max_length: 255; e.g. Autodesk;.
trade                string     No        max_length: 255;.
category             string     No        max_length: 255;.
deprecated_image_url string     No        max_length: 255; e.g. http://www.autodesk.com/image.jpg;.
website_url          string     No        max_length: 255; e.g. http://www.autodesk.com;.
description          string     No        max_length: 255;
address_line_1       string     No        max_length: 255; e.g. New York,US;.
address_line_2       string     No        max_length: 255; e.g. New York,US;.
city                 string     No        max_length: 255; e.g. New York;.
postal_code          string     No        max_length: 255; e.g. 200120;.
state_or_province    string     No        max_length: 255; e.g. New York;.
country              string     No        max_length: 255; e.g. US;.
phone                string     No        max_length: 255; e.g. +8615618171506;.
custom_properties    string     No        max_length: 255;.
erp_id               string     No        Support free form text entry. Used to associate a company in BIM 360 with the company data in ERP system.
tax_id               string     No        Support free form text entry. Used to associate a company in BIM 360 with the company data from public and industry sources.
===================  =========  ========= ===========================================

* Body Structure

  .. code-block:: json

      {
            "name": "company aixl 00000001",
            "trade": "Concrete",
            "phone": "66666688888"
      }

==============
Response
==============
* HTTP Status Code Summary

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

＊ Structure(200 OK)

.. code-block:: json

      {
            "id": "d966a8ef-e7d9-4706-aec7-e1324b3b54bc",
            "account_id": "91098a80-a5e6-4855-8ea6-edc1ae1bd3a5",
            "name": "company aixl 00000001",
            "trade": "Concrete",
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
            "phone": "66666688888",
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

=============
Examples
=============

* URL

https://developer.api.autodesk.com/hq-api/v1/accounts/{account_id}/companies/{company_id}


* Request

curl -H "Authorization: Bearer k3CMIQy17ZMRHRLK71pEGg6L28IA" -H "Content-Type: application/json" -X PATCH -d '{"name": "company aixl 00000001","trade": "Concrete","phone": "66666688888"}' https://developer.api.autodesk.com:443/hq-api/v1/accounts/91098a80-a5e6-4855-8ea6-edc1ae1bd3a5/companies/d966a8ef-e7d9-4706-aec7-e1324b3b54bc

* Response

.. code-block:: json

      {
            "id": "d966a8ef-e7d9-4706-aec7-e1324b3b54bc",
            "account_id": "91098a80-a5e6-4855-8ea6-edc1ae1bd3a5",
            "name": "company aixl 00000001",
            "trade": "Concrete",
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
            "phone": "66666688888",
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
