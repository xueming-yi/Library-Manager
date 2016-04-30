=======================
GET / Index
=======================
Query all the projects under one specific account

=====================
Resource Information
=====================
========================== ============================================================
Method and URI                             GET accounts/{account_id}/projects
Authentication Context            Apigee access token required
Data Formats                                  JSON
========================== ============================================================

=====================
Request
=====================

* HTTP Headers

================  =========  ========= ===========================================
HTTP Headers          Type   Required    Description
================  =========  ========= ===========================================
Authorization       string   Yes       OAuth 2 authorization header
================  =========  ========= ===========================================


* Query String Parameters

================  =========  ========= ===========================================
Name                   Type   Required    Description
================  =========  ========= ===========================================
limit              integer        No           Set response array's size. Default size: 10. Default sort order is updated_at DESC.
offset             integer        No           Set offset of response array. Default value: 0. Default sort order is updated_at DESC. 
sort              string           No           Sort result by fields. Separate multiple fields with comma, the sort order is ASC and use minus sign '-' to reverse the order as DESC. Invalid fields and whitespace will be ignored.
field             string          No            Filter result with expected fields, and id will be always returned. Separate multiple fields with comma. Invalid fields will be ignored.
================  =========  ========= ===========================================

==============
Response
==============
* HTTP Status Code Summary

==========================  ====================================
Status Code                 Description      
==========================  ====================================
200 OK                       Indicate nonspecific success. Must not be used to communicate errors in response body.
400 Bad Request              Nonspecific error about the request prepared by the client.
403 Forbidden                The request was a valid request, but the server is refusing to respond to it. 403 error semantically means "unauthorized", i.e. the user does not have the necessary permissions for the resource.
404 Not Found                The resource cannot be found according to the client provided resource URI.
409 Conflict                  The request could not be completed due to a conflict with the current state of the resource.
422 Unprocessable Entity       The request was well-formed but was unable to be followed due to semantic errors.
500 Internal Server Error            To indicate server side problems.
==========================  ====================================

＊ Structure(200 OK)

.. code-block:: json

    [
      {
        "id": "aca11a7a-bd17-47cd-ab99-6548d0e6fe25",
        "account_id": "e3d5ef8d-5c37-4b9d-925d-1e6d24753ace",
        "name": "00012_project_construction",
        "start_date": "2015-05-02",
        "end_date": "2016-04-03",
        "project_type": "office",
        "value": 3000.0,
        "currency": "USD",
        "status": "active",
        "status_reason": null,
        "job_number": "0219-01",
        "address_line_1": "The Fifth Avenue",
        "address_line_2": "#301",
        "city": "New York",
        "state_or_province": "NY",
        "postal_code": "10011",
        "country": "US",
        "business_unit_id": "c17e6837-96cd-4839-868e-051a2ad65d28",
        "timezone": "America/New_York",
        "language": null,
        "construction_type": "Renovation",
        "contract_type": "Design-Bid",
        "last_sign_in": "2016-04-05T07:27:20.858Z",
        "created_at": "2016-04-05T07:26:20.858Z",
        "updated_at": "2016-04-05T07:31:26.290Z"
      }
     ]


=============
Examples
=============

* URL 

https://developer.api.autodesk.com/hq-api/v1/accounts/{account_id}/projects

* Request 

curl -H "Authorization: Bearer b4o50SCPCGDzr6zBUDWnUq6Bs8Rf" "https://developer.api.autodesk.com/hq-api/v1/accounts/e3d5ef8d-5c37-4b9d-925d-1e6d24753ace/projects?limit=1&offset=0&sort=name&field=name"

* Response 

.. code-block:: json

    [
      {
        "id": "aca11a7a-bd17-47cd-ab99-6548d0e6fe25",
        "account_id": "e3d5ef8d-5c37-4b9d-925d-1e6d24753ace",
        "name": "00012_project_construction",
        "start_date": "2015-05-02",
        "end_date": "2016-04-03",
        "project_type": "office",
        "value": 3000.0,
        "currency": "USD",
        "status": "active",
        "status_reason": null,
        "job_number": "0219-01",
        "address_line_1": "The Fifth Avenue",
        "address_line_2": "#301",
        "city": "New York",
        "state_or_province": "NY",
        "postal_code": "10011",
        "country": "US",
        "business_unit_id": "c17e6837-96cd-4839-868e-051a2ad65d28",
        "timezone": "America/New_York",
        "language": null,
        "construction_type": "Renovation",
        "contract_type": "Design-Bid",
        "last_sign_in": "2016-04-05T07:27:20.858Z",
        "created_at": "2016-04-05T07:26:20.858Z",
        "updated_at": "2016-04-05T07:31:26.290Z"
      }
     ]