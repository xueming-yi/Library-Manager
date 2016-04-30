=======================
PATCH / add_image
=======================
Update one project's image. 

=====================
Resource Information
=====================
========================== ============================================================
Method and URI                             PATCH accounts/{account_id}/projects/{project_id}/image
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


* Body Structure

.. code-block:: json

    {
         "chunk"=>#<ActionDispatch::Http::UploadedFile:0x007f5f0c0cb120 @tempfile=#<Tempfile:/tmp/RackMultipart20160418-22503-11ge2ip>, @original_filename="pcl.png", @content_type="image/png", @headers="Content-Disposition: form-data; name=\"chunk\"; filename=\"pcl.png\"\r\nContent-Type: image/png\r\n">
    }

* Payload

===================  =========  ========= ===========================================
Name                   Type     Required   Description
===================  =========  ========= ===========================================
chunk                 file     Yes        image file for project. Supported image types are image/png, image/jpeg, image/jpg, image/bmp and image/gif.

===================  =========  ========= ===========================================


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

https://developer.api.autodesk.com/hq-api/v1/accounts/{account_id}/projects/{project_id}/image

* Request 
curl -H "Authorization: Bearer b4o50SCPCGDzr6zBUDWnUq6Bs8Rf" -X PATCH -d 'chunk=#<ActionDispatch::Http::UploadedFile:0x007f5f0c0cb120 @tempfile=#<Tempfile:/tmp/RackMultipart20160418-22503-11ge2ip>, @original_filename="pcl.png", @content_type="image/png", @headers="Content-Disposition: form-data; name=\"chunk\"; filename=\"pcl.png\" Content-Type: image/png">' https://developer.api.autodesk.com/hq-api/v1/accounts/e3d5ef8d-5c37-4b9d-925d-1e6d24753ace/projects/aca11a7a-bd17-47cd-ab99-6548d0e6fe25／image


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
