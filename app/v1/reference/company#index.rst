#######################
GET Index
#######################

Query all the partner companies under one specific account

**********************
Resource Information
**********************
========================== ============================================================
Method and URI                      GET accounts/{account_id}/companies
Requires authentication?            Yes
Data Formats                        JSON
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

* Body Structure

.. sourcecode:: json
  
	{
		"$schema": "http://json-schema.org/draft-04/schema#",
    "title": "company",
    "type": "object",
    "properties": {
    	"account_id": {
    		"type": "uuid"
    		"description": "HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49"
    	},
    	"limit": {
    		"type": "integer"
    		"description": "Set response array's size. Default size: 10. Default sort order is updated_at DESC."
    	},
    	"offset": {
    		"type": "integer"
    		"description": "Set offset of response array. Default value: 0. Default sort order is updated_at DESC."
    	},
    	"sort": {
    		"type": "string"
    		"description": "Sort result by fields. Separate multiple fields with comma, the sort order is ASC and use minus sign '-' to reverse the order as DESC. Invalid fields and whitespace will be ignored."
    	},
    	"field": {
    		"type": "string"
    		"description": "Filter result with expected fields, and id will be always returned. Separate multiple fields with comma. Invalid fields will be ignored."
    	},
    },
    "required": ["account_id"]
  }


================  ===========  ========= ===========================================
Attribute         Value Type   Required  Description
================  ===========  ========= ===========================================
account_id        string       Yes       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49
limit             integer      No        Set response array's size. Default size: 10. Default sort order is updated_at DESC.
offset            integer      No        Set offset of response array. Default value: 0. Default sort order is updated_at DESC.
sort              string       No        Sort result by fields. Separate multiple fields with comma, the sort order is ASC and use minus sign '-' to reverse the order as DESC. Invalid fields and whitespace will be ignored.
field             string       No        Filter result with expected fields, and id will be always returned. Separate multiple fields with comma. Invalid fields will be ignored.
================  ===========  ========= ===========================================

********
Response
********

HTTP Status Code Summary
==========================

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

Structure(200 OK)
====================

.. sourcecode:: json

	[
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
    },
    {
      "id": "1fcedb96-0a5c-4343-acc0-1aa3125bc2d1",
      "account_id": "b18a6658-5a29-458d-b344-266298080a34",
      "name": "S1459646542897_Trial",
      "trade": null,
      "category": "owner",
      "status": null,
      "project_size": 0,
      "user_size": 0,
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
      "created_at": "2016-04-03T01:15:36.514Z",
      "updated_at": "2016-05-04T01:58:03.998Z",
      "image_file_name": null,
      "image_content_type": null,
      "image_file_size": null,
      "image_updated_at": null,
      "processing_image_key": null,
      "original_name": null,
      "erp_id": null,
      "tax_id": null
    },
    ....
  ]

********
Examples
********

URL 
=====

https://developer.api.autodesk.com/hq-api/v1/accounts/{account_id}/companies

Request
=========

curl -H "Authorization: Bearer MgSXuYLS7GaHvzLpuNXS0o7hgci9" -H "Content-Type: application/json" -X GET -d '{"limit": "5","offset": "0","sort": "name","field": "name,trade"}' https://developer.api.autodesk.com/hq-api/v1/accounts/91098a80-a5e6-4855-8ea6-edc1ae1bd3a5/companies

Response
=========

.. sourcecode:: json
	
	HTTP/1.1 201 GET
  Cache-Control: max-age=0, private, must-revalidate
  Content-Type: application/json; charset=utf-8
  
	[
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
    },
    {
      "id": "1fcedb96-0a5c-4343-acc0-1aa3125bc2d1",
      "account_id": "b18a6658-5a29-458d-b344-266298080a34",
      "name": "S1459646542897_Trial",
      "trade": null,
      "category": "owner",
      "status": null,
      "project_size": 0,
      "user_size": 0,
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
      "created_at": "2016-04-03T01:15:36.514Z",
      "updated_at": "2016-05-04T01:58:03.998Z",
      "image_file_name": null,
      "image_content_type": null,
      "image_file_size": null,
      "image_updated_at": null,
      "processing_image_key": null,
      "original_name": null,
      "erp_id": null,
      "tax_id": null
    }
    .......
	]
