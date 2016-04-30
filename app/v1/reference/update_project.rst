=======================
PATCH / update
=======================
Update one project's properties. Note that when update the project status using this API, will affect this project's status in all products.

=====================
Resource Information
=====================
========================== ============================================================
Method and URI                             PATCH accounts/{account_id}/projects/{project_id}
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
Content-Type       string    Yes       Must be "application/json"
================  =========  ========= ===========================================


* Input Parameters

===================  =========  ========= ===========================================
Name                   Type     Required   Description
===================  =========  ========= ===========================================
name                 string     No        Name of project. Max length: 255.  e.g. 00012_project_construction
status               string     No        Specify the status of project. Possible values: [ active, inactive, archived ]. "active" means to activate the project, "inactive" means to suspend the project, "archived" means to archive this project. If this parameter is absent, it means do not update project status. Note: change this status will affect the projects in all products.
start_date           date      No       The date when project start. Format: yyyy-mm-dd. e.g. 2014-10-31
end_date             date        No       The date when project end. Format: yyyy-mm-dd. e.g. 2015-9-1
project_type         string      No       The type of project. e.g. office
value                float       No       Only float allowed. e.g. 5000
currency             string      No        e.g. USD
job_number           string      No        Project job number. Any string can be entered. Max length: 255.e.g. 0219-01
address_line_1       string      No        Max length: 255. e.g. The Fifth Avenue
address_line_2       string      No        Max length: 255. e.g. #301
city                 string      No        Max length: 255. e.g. New York
state_or_province    string      No        Max length: 255. e.g. New York
postal_code          string      No        Max length: 255. e.g. 10011
country              string      No        Max length: 255. e.g. US
business_unit_id     string      No        Specify the business unit used in this project. Format is UUID. e.g. c17e6837-96cd-4839-868e-051a2ad65d28
timezone             string      No        e.g. America/New_York
construction_type    string      No        Accept value of a fix set {"New Construction", "Renovation"}. Case sensitive. Used to support creating comparable projects for BIM 360 IQ analytics. Max length: 255.
contract_type        string      No        Accept value of a fix set {"Construction Management (CM) at Risk", "Design-Bid", "Design-Bid-Build", "Design-Build-Operate", "IPD"}. Case sensitive. Used to support creating comparable projects for BIM 360 IQ analytics. Max length: 255.
===================  =========  ========= ===========================================

* Body Structure

.. code-block:: json

	{
         "name":"00012_project_construction",
         "status":"inactive"
         "start_date":"2015-05-02",
         "end_date": "2016-04-03",
         "project_type": "office",
         "value": 3000,
         "currency": "USD",
         "job_number": "0219-01",
         "address_line_1": "The Fifth Avenue",
         "address_line_2": "#301",
         "city": "New York",
         "state_or_province": "New York",
         "postal_code": "10011",
         "country": "US",
         "business_unit_id": "c17e6837-96cd-4839-868e-051a2ad65d28",
         "timezone": "America/New_York",
         "construction_type": "Renovation",
         "contract_type": "Design-Bid"
  	}


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

    {
        "id": "aca11a7a-bd17-47cd-ab99-6548d0e6fe25",
        "account_id": "e3d5ef8d-5c37-4b9d-925d-1e6d24753ace",
        "name": "00012_project_construction",
        "start_date": "2015-05-02T00:00:00.000Z",
        "end_date": "2016-04-03T00:00:00.000Z",
        "project_type": "office",
        "value": 3000.0,
        "currency": "USD",
        "status": "inactive",
        "status_reason": "suspended",
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
=============
Examples
=============

* URL 

https://developer.api.autodesk.com/hq-api/v1/accounts/{account_id}/projects/{project_id}

* Request 
curl -H "Authorization: Bearer b4o50SCPCGDzr6zBUDWnUq6Bs8Rf" -X PATCH -d "name=00012_project_construction&status=inactive&start_date=2015-05-02&end_date=2016-04-03&project_type=office&value=3000&currency=USD&job_number=0219-01&address_line_1=The Fifth Avenue&address_line_2=#301&city=New York&state_or_province=New York&postal_code=10011&country=US&timezone=America/New_York&construction_type=Renovation&contract_type=Design-Bid" https://developer.api.autodesk.com/hq-api/v1/accounts/e3d5ef8d-5c37-4b9d-925d-1e6d24753ace/projects/aca11a7a-bd17-47cd-ab99-6548d0e6fe25


* Response 

.. code-block:: json

    {
        "id": "aca11a7a-bd17-47cd-ab99-6548d0e6fe25",
        "account_id": "e3d5ef8d-5c37-4b9d-925d-1e6d24753ace",
        "name": "00012_project_construction",
        "start_date": "2015-05-02T00:00:00.000Z",
        "end_date": "2016-04-03T00:00:00.000Z",
        "project_type": "office",
        "value": 3000.0,
        "currency": "USD",
        "status": "inactive",
        "status_reason": "suspended",
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
