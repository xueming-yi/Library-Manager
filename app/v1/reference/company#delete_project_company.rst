#################################
DELETE delete_project_company
#################################

Remove the partner company from the project
* This api will remove company from the project, company record still exists in the account after remove. 
* Cannot remove successfully if there are project user associated with it. So before remove project-company association, please check project users associated with project company.


**********************
Resource Information
**********************

==========================   ============================================================
Method and URI               DELETE accounts/{account_id}/projects/{project_id}/companies/{id}
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
      "id": {
        "type": "uuid",
        "description": "HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;",
      },
      "service_type": {
        "type": "string",
        "description": "single type allowed. field, glue or plan, etc..",
      },
    },
    "required": ["account_id", "project_id", "id", "service_type"]
  }

=====================  ===========  ========= ===========================================
Attribute              value Type   Required  Description
=====================  ===========  ========= ===========================================
account_id             string       YES       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
project_id             string       YES       HQ project id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
id                     string       YES       HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
service_type           string       YES       single type allowed. field, glue or plan, etc..
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
400 Bad Request              Nonspecific error about the request prepared by the client
403 Forbidden                The request was a valid request, but the server is refusing to respond to it. 403 error semantically means "unauthorized", i.e. the user does not have the necessary permissions for the resource.
404 Not Found                The resource cannot be found according to the client provided resource URI
409 Conflict                  The request could not be completed due to a conflict with the current state of the resource
422 Unprocessable Entity
500 Internal Server Error            To indicate server side problems
==========================  ====================================

Structure(200 OK)
====================

//nothing in content

********
Examples
********

URL 
=====

https://developer-dev.api.autodesk.com:443/ea-api-dev/v1/accounts/b18a6658-5a29-458d-b344-266298080a34/projects/4ed25f29-113e-4187-968e-37117138c29d/companies/1fcedb96-0a5c-4343-acc0-1aa3125bc2d1?service_type=field

Request
========= 

curl -H "Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA" -X DELETE https://developer-dev.api.autodesk.com:443/ea-api-dev/v1/accounts/b18a6658-5a29-458d-b344-266298080a34/projects/4ed25f29-113e-4187-968e-37117138c29d/companies/1fcedb96-0a5c-4343-acc0-1aa3125bc2d1?service_type=field
  
Response 
==========

//nothing in content
