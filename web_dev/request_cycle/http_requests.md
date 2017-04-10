#9.1 challenge

##Release 0
### Commmon HTTP status codes.
-404 Not found (The most common error. THis error codes means the requested resource is no longer available.)
-403 Forbidden (Another common error. This means access to the resource is forbidden.)
-500 Internal server error (This is a server-side error codes.)
-503 Service unavailable. (This could be a temporary problem, it basically means the web server is not available.)
-504 Gateway Timeout (This indicates a gateway timeout. Request took to long and no respond from server therefore timeout.)

### What is the difference between a GET request and a POST request? When might each be used?
-**GET** is for retrieving data. It should have no side effects, you should be able to request the same URL over and over harmlessly.  
-**POST**  is for writing data.  It may have side effects.  Making multiple identical write requests will likely result in multiple writes.  Browsers typically give you warnings about this.  POST is *not* secure.  The data is in the body of the request instead of the URL but it is trivially simple to view/edit.

### Cookie
-An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server. Typically, it's used to know if two requests came from the same browser allowing to keep a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol.
-
