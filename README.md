BSDPy 1.0
=========

BSDPy is a platform-independent Apple NetBoot (BSDP) service for organizations
that have a need for Apple Mac NetBoot functionality but that lack the ability
to support OS X server in order to implement it.

 

General Functionality
---------------------

The BSDPy service provides the same NetInstall feature set provided by Apple's
OS X Server, which depending on the OS X version is either called "NetBoot" or
"NetInstall". Management tools like DeployStudio and JAMF Casper which rely on a
NetInstall-style image to launch an imaging client that writes a disk image to a
local HD or SSD and performs post-imaging configuration are fully compatible
with BSDPy. NetInstall-style images created by Apple's System Image Utility or
any other tools that create a NetInstall-style NBI are also fully compatible.
BSDPy does not currently support the less frequently used diskless NetBoot mode
which relies on a shadow disk image to be mounted from an AFP share. Shadowing
using a RAM disk or local storage is fully supported.

 

Configuration
-------------

docker run -d -v /Users/Shared/nbi:/nbi:ro -p 69:69/udp -p 67:67/udp -p 80:80 -e DOCKER_BSDPY_IP=192.168.100.102 -e DOCKER_BSDPY_IFACE=en0 --name bsdpy_daemon stevekueng/bsdpy
