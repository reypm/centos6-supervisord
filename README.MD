README
----

Modified Dockerfile
---
The new Dockerfile is modified to custom install Python2.7 (centOS6 uses python 2.6), and after that custom install pip, and these things, include supervisor. **THESE TAKE A LONG TIME**

----
Consierations
----
Save the image with python and pip installed, save it under a tag (like centos-python) and make another Dockerfile for your application, using that image as base.

----
Errors
----
Currently the ```/config/bootstrap.sh``` is not working, it fails due a supervisord configuration, i'm not a big expert of supervisord so i can't help here.

Installation of python & pip from  [here][1] & [here][2].

Hope this helps

  [1]: https://hub.docker.com/r/tleyden5iwx/centos-6-python-2.7/
  [2]: https://danieleriksson.net/2017/02/08/how-to-install-latest-python-on-centos/
