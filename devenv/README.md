# ardulink-devenv 

This is an ubuntu image with Eclipse 2018-09 (4.9.0) preinstalled. This image is the basic develop environment for Ardulink project.

Docker image is located at:
[ardulink dockerhub](https://hub.docker.com/r/ardulink/ardulink-devenv/)

Or you can dowload it with:

> docker pull ardulink/ardulink-devenv

NOTE: a volume for workspaces is already defined at path: **/home/developer/workspaces**

So you are adviced to use this path. Using a volume eclipse will be faster and your workspaces will be portable.

You have just to run this command from **/home/developer/workspaces/ardulink2**

> git clone https://github.com/Ardulink/Ardulink-2.git

And then from eclipse import -> existing maven projects browsing folder: **/home/developer/workspaces/ardulink2/Ardulink-2**

suggested project names set from advanced options Name template as \[artifactId\]

In order to create the image you need for the JDK 1.8 and Eclipse so you have to put tars into the folder.
You can find these files as github release attachments.
