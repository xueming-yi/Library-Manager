=======================
GET / Index
=======================
Query all the partner companies under one specific account

=====================
Resource Information
=====================
========================== ============================================================
Method and URI                      GET accounts/{account_id}/companies
Requires authentication?            Yes
Data Formats                        JSON
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


* Query String Parameters

================  =========  ========= ===========================================
Name                   Type   Required    Description
================  =========  ========= ===========================================
account_id        string      Yes       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49
limit             integer     No        Set response array's size. Default size: 10. Default sort order is updated_at DESC.
offset            integer     No        Set offset of response array. Default value: 0. Default sort order is updated_at DESC.
sort              string      No        Sort result by fields. Separate multiple fields with comma, the sort order is ASC and use minus sign '-' to reverse the order as DESC. Invalid fields and whitespace will be ignored.
field             string      No        Filter result with expected fields, and id will be always returned. Separate multiple fields with comma. Invalid fields will be ignored.
================  =========  ========= ===========================================

* Body Structure

   .. sourcecode:: http

	{
	      "limit": "5",
	      "offset": "0",
	      "sort": "name",
	      "field": "name,trade"
  	}

==============
Response
==============
* HTTP Status Code Summary

==========================  ====================================
Status Code                 Description
==========================  ====================================
200 OK                       Indicate nonspecific success. Must not be used to communicate errors in response body.
400 Bad Request              Nonspecific error about the request prepared by the client
403 Forbidden                The request was a valid request, but the server is refusing to respond to it. 403 error semantically means "unauthorized", i.e. the user does not have the necessary permissions for the resource.
404 Not Found                The resource cannot be found according to the client provided resource URI
409 Conflict                  The request could not be completed due to a conflict with the current state of the resource
500 Internal Server Error            To indicate server side problems
==========================  ====================================

＊ Structure(200 OK)

   .. sourcecode:: http

     [
      {
           "id":"a9f98c23-c753-42d5-902e-2daee784e21f",
           "name":"account qa aixl 20160323 1348",
           "trade":null
      },
      {
            "id":"70954451-c643-43cc-8a98-889860408465",
            "name":"company aixl 001",
            "trade":null
      },
      {
            "id":"d966a8ef-e7d9-4706-aec7-e1324b3b54bc",
            "name":"company aixl 002",
            "trade":null
      }
     ]

Examples
=============

* URL

https://developer.api.autodesk.com/hq-api/v1/accounts/{account_id}/companies

* Request

curl -H "Authorization: Bearer MgSXuYLS7GaHvzLpuNXS0o7hgci9" -H "Content-Type: application/json" -X GET -d '{"limit": "5","offset": "0","sort": "name","field": "name,trade"}' https://developer.api.autodesk.com/hq-api/v1/accounts/91098a80-a5e6-4855-8ea6-edc1ae1bd3a5/companies

* Response

.. sourcecode:: http

     [
      {
           "id":"a9f98c23-c753-42d5-902e-2daee784e21f",
           "name":"account qa aixl 20160323 1348",
           "trade":null
      },
      {
            "id":"70954451-c643-43cc-8a98-889860408465",
            "name":"company aixl 001",
            "trade":null
      },
      {
            "id":"d966a8ef-e7d9-4706-aec7-e1324b3b54bc",
            "name":"company aixl 002",
            "trade":null
      }
     ]
