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

##Release 1 
-Linux borrows heavily from theUNIX operating system because it was written to be a free and open source version ofUNIX. Files are stored in a hierarchical filesystem, with the top node of the system beingrootor simply "/". Whenever possible, Linux makes its components available via files or objects that look like files. Processes, devices, and network sockets are all represented by file-like objects, and can often be worked with using the same utilities used for regular files.Linux is a fullymultitasking(a method where multiple tasks are performed during the same period of time),multiuseroperating system, with built-in networking and service processes known asdaemons in theUNIXworld.
-VPS is a virtual server where you can use cloud as a machine to host your server. Hosting a server with VPS is cheaper and have a lot more control over your server than you do with shared hosting. 
-It is considered a bad idea to run programs as the root because it might damage the OS (using root to accidentally accessed and delete important files.)


