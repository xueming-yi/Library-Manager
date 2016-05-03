#################################
DELETE Companies#delete_project_company
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

Input Parameters
=================
=====================  =========  ========= ===========================================
Name                   Type       Required  Description
=====================  =========  ========= ===========================================
account_id             string     YES       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
project_id             string     YES       HQ account id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
id                     string     YES       HQ company id. UUID. e.g. 84e49c32-8ced-4cda-9586-30e7668b6b49;.
service_type           string     YES       single type allowed. field, glue or plan, etc..


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
            "id": {
                "type": "string",
            },
            "service_type": {
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

https://developer-dev.api.autodesk.com:443/ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies/f48fcbe8-822d-4ae1-91cb-fb132c5db014?service_type=doc_manager

Request
========= 

.. code-block:: json

  DELETE /ea-api/v1/accounts/4d35ca2e-ccff-4397-8c34-2a9d7dbe1e74/projects/5ad6573d-ff9e-4329-ae3e-b921413112e7/companies/f48fcbe8-822d-4ae1-91cb-fb132c5db014?service_type=doc_manager HTTP/1.1
  Content-Type: application/json
  Authorization: Bearer KmE9JOw2PrRpqEhFsrFWbyktnnQA
  
Response 
==========

//nothing in content
