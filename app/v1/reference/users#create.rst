########
POST /accounts/{account_id}/users
########

Create one user in account
HQ user and company have 2 levels of relationship, and the company of one user could be different between these 2 levels: 
  1. user belongs to company on account level. 
  2. user represents one company to participated in project on project level. 
  Parameter 'company_id' in this api is to setup relationship on the first level only.


********************
Resource Information
********************

======================   ========================================================================
Method and URI           POST https://developer.api.autodesk.com/ea-api/v1/accounts/{account_id}/users
Authentication Context   app-only | user context required | user context optional
Required OAuth Scopes    scopename1:read, scopename2:read, scopename3:process
Data Format              JSON
======================   ========================================================================

*******
Request
*******


Headers
=======
These headers are specific to this endpoint. (Omit the "Headers" section if there are none.)

============   ========   ==========   ===========================
Name           Required   Value Type   Description
============   ========   ==========   ===========================
Content-Type   yes        string       Must be "application/json".
X-Custom-H     no         int          | Add a description.
                                       | Indicate default values
                                         for optional headers.
============   ========   ==========   ===========================

Body Structure
==============
.. _JSON Schema: http://json-schema.org/latest/json-schema-core.html

.. code-block:: json

  {
    "$schema": "http://json-schema.org/draft-04/schema#",
    "title": "User",
    "type": "object",
    "properties": {
      "email": {
        "type": "string"
      },
      "company_id": {
        "type": "uuid"
      },
      "name": {
        "type": "string"
      },
      "nickname": {
        "type": "string"
      },
      "first_name": {
        "type": "string"
      },
      "last_name": {
        "type": "string"
      },
      "status": {
        "type": "string"
      },
      "uid": {
        "type": "string"
      },
      "image_url": {
        "type": "string"
      },
      "last_sign_in": {
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
      "company": {
        "type": "string"
      },
      "job_title": {
        "type": "string"
      },
      "industry": {
        "type": "string"
      },
      "about_me": {
        "type": "string"
      }
    },
    "required": ["email"]
  }

=====================   ========   =============   =================
Attribute               Required   Value Type      Description
=====================   ========   =============   =================
email                   yes        string          max_length: 255; email format.
company_id              no         string          UUID. this user takes part in the account as a member of some company.
name                    no         string          max_length: 255;
nickname                no         string          max_length: 255;
first_name              no         string          max_length: 255;
last_name               no         string          max_length: 255;
status                  no         string          
uid                     no         string          oxygen_id.
image_url               no         string          max_length: 255
last_sign_in            no         string          datetime format. e.g. 2014-11-04T08:01:20.169+00:00
address_line_1          no         string          max_length: 255
address_line_2          no         string          max_length: 255
city                    no         string          max_length: 255
postal_code             no         string          max_length: 255
state_or_province       no         string          max_length: 255
country                 no         string          max_length: 255
phone                   no         string          max_length: 255
company                 no         string          max_length: 255. Company info from Oxygen server, no relation with HQ company.
job_title               no         string          max_length: 255
industry                no         string          max_length: 255
about_me                no         string          max_length: 255
=====================   ========   =============   =================


********
Response
********

HTTP Status Code Summary
========================

====   ==========================================================================
Code   Meaning
====   ==========================================================================
201    Created Successfully
400    Bad Request
403    Forbidden
404    Not Found
409    Conflict
422    Unprocessable Entity
500    Internal Server Error
====   ==========================================================================

Structure (201)
===============

.. code-block:: json

  {
    "$schema": "http://json-schema.org/draft-04/schema#",
    "title": "User",
    "type": "object",
    "properties": {
      "email": {
        "type": "string"
      },
      "account_id": {
        "type": "uuid"
      },
      "status": {
        "type": "uuid"
      },
      "status_reason": {
        "type": "uuid"
      },
      "company_id": {
        "type": "uuid"
      },
      "name": {
        "type": "string"
      },
      "nickname": {
        "type": "string"
      },
      "first_name": {
        "type": "string"
      },
      "last_name": {
        "type": "string"
      },
      "uid": {
        "type": "string"
      },
      "image_url": {
        "type": "string"
      },
      "last_sign_in": {
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
      "company": {
        "type": "string"
      },
      "job_title": {
        "type": "string"
      },
      "industry": {
        "type": "string"
      },
      "about_me": {
        "type": "string"
      },
      "system_user_status": {
        "type": "string"
      },
      "company_name": {
        "type": "string"
      }
    }
  }


=====================   =============   =================
Attribute               Value Type      Description
=====================   =============   =================
id                      uuid                     
account_id              uuid            
status                  string          
status_reason           string          
role                    string
admin_phone             string
company_id              string
related_mail_id         string
last_sign_in            string
email                   string
name                    string
nickname                string
first_name              string
last_name               string
uid                     string
image_url               string
address_line_1          string
address_line_2          string
city                    string
postal_code             string
state_or_province       string
country                 string
phone                   string
company                 string
job_title               string
industry                string
about_me                string
system_user_status      string
company_name            string
created_at              string
updated_at              string
=====================   =============   =================

********
Examples
********

Basic Successful Foo Creation (201)
===================================

.. code-block:: json

  POST /bim360-admin-api/v1/accounts/9dbb160e-b904-458b-bc5c-ed184687592/users HTTP/1.1
  Content-Type: application/json
  Authorization: Bearer <TOKEN>

  {
    "email":"test.bim360hq@autodesk.com",
    "company_id":"14e95a5e-02eb-49aa-a39a-447d90544873",
    "name":"Matt Hu",
    "nickname":"Matty",
    "first_name":"Matt",
    "last_name":"Hu",
    "status":"active",
    "uid": "",
    "image_url": "/image/matthu",
    "last_sign_in": "2016-04-01",
    "address_line_1": "nowhere",
    "address_line_2": "nowhere",
    "city": "shanghai",
    "postal_code": "20000",
    "state_or_province": "shanghai",
    "country": "china",
    "phone": "1234567",
    "company": "autodesk",
    "job_title": "software developer",
    "industry": "IT",
    "about_me": "nothing"
  }

.. code-block:: json

  HTTP/1.1 201 Created
  Cache-Control: no-cache
  Content-Type: application/json; charset=utf-8
  Date: Fri, 09 May 2014 23:14:49 GMT
  Expires: -1
  Location: https://developer.api.autodesk.com/bim360-admin-api/v1/accounts/9dbb160e-b904-458b-bc5c-ed184687592/users
  Pragma: no-cache
  Server: Microsoft-IIS/8.0
  X-AspNet-Version: 4.0.30319
  X-Powered-By: ASP.NET
  Content-Length: 579
  Connection: keep-alive

  {
    "id":"79b51334-1127-4313-a0e1-4986b3e96c47",
    "account_id":"9dbb160e-b904-458b-bc5c-ed184687592d",
    "status":"active",
    "status_reason":null,
    "role":null,
    "admin_phone":null,
    "created_at":"2016-04-07T08:45:51.050Z",
    "updated_at":"2016-04-07T08:45:51.050Z",
    "company_id":"14e95a5e-02eb-49aa-a39a-447d90544873",
    "related_mail_id":null,
    "last_sign_in":null,
    "email":"test.bim360hq@autodesk.com",
    "name":"Matt Hu",
    "nickname":"Matty",
    "first_name":"Matt",
    "last_name":"Hu",
    "uid":null,
    "image_url":"/image/matthu.png",
    "address_line_1":"nowhere",
    "address_line_2":"nowhere",
    "city":"shanghai",
    "postal_code":"20000",
    "state_or_province":"shanghai",
    "country":"china",
    "phone":"1234567",
    "company":"autodesk",
    "job_title":"software developer",
    "industry":"IT",
    "about_me":"nothing",
    "system_user_status":null,
    "company_name":"acme"
  }

********
CURL
********

Request:
curl -H "Content-Type: application/json" -H "Authorization: Bearer XZvCJNhdxESsBRIH28MfLf2hKL5O" -X POST -d '{"email":"test.bim360hq@autodesk.com","company_id":"14e95a5e-02eb-49aa-a39a-447d90544873","name":"Matt Hu","nickname":"Matty","first_name":"Matt","last_name":"Hu","status":"active","uid":"","image_url":"/image/matthu","last_sign_in":"2016-04-01","address_line_1":"nowhere","address_line_2":"nowhere","city":"shanghai","postal_code":"20000","state_or_province": "shanghai","country":"china","phone":"1234567","company":"autodesk","job_title":"software developer","industry":"IT","about_me": "nothing"}' https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/9dbb160e-b904-458b-bc5c-ed184687592d/users

Response:
{"id":"79b51334-1127-4313-a0e1-4986b3e96c47","account_id":"9dbb160e-b904-458b-bc5c-ed184687592d","status":"active","status_reason":null,"role":null,"admin_phone":null,"created_at":"2016-04-07T08:45:51.050Z","updated_at":"2016-04-07T08:45:51.050Z","company_id":"14e95a5e-02eb-49aa-a39a-447d90544873","related_mail_id":null,"last_sign_in":null,"email":"test.bim360hq@autodesk.com","name":"Matt Hu","nickname":"Matty","first_name":"Matt","last_name":"Hu","uid":null,"image_url":"/image/matthu","address_line_1":"nowhere","address_line_2":"nowhere","city":"shanghai","postal_code":"20000","state_or_province":"shanghai","country":"china","phone":"1234567","company":"autodesk","job_title":"software developer","industry":"IT","about_me":"nothing","system_user_status":null,"company_name":"acme"}
