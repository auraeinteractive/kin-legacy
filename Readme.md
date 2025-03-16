'Kin v1.5.0, "Legacy"
==========================

---
**Release notes**

This is a work in progress - before the release there may be fluctuations, also 
in this ReadMe. Full notes coming with the final release of 1.5.0.

**Regarding FriendOS**

Kin Legacy is based on FriendOS 1.4 (which was never finalized). There may be 
words and sentences and technologies that use the Friend wording. These will be
replaced and renamed over the course of the development roadmap for Kin v1.5.0.

---

Kin leverages the computing power of the Internet to offer many of the features and functionalities of Chrome OS, Windows, Linux, Android, macOS or iOS, without the need to choose a specific hardware platform or proprietary software package. If you have a device that is connected to the Internet, you can use Kin.

Kin liberates you from Big Tech:  It gives you control to create, collaborate, store and share information, data and content across all your devices in a secure private environment and access it anywhere on any device.

![Kin Legacy](https://os-kin.com/BG.jpg)

Across devices
--------------

With its responsive desktop environment and client-side, javascript based technologies, Kin offers a new reality where you work and play online, independently from your local web enabled hardware. By supporting all screen formats, from mobile phones to laptops and VR, Kin is a single target through which you can reach the entire user market.

To install Kin on your device, chose "Install Kin" from your browser on mobile/tablet or desktop.

Distributed and powerful
------------------------

Kin aims to make the powerful emerging web technologies easy to work with. This is why we reach out to you, to help us enrich this platform with DOS drivers, modules, libraries and apps so that we can cover all of the interesting technologies out there that people use and love.
In the Future, Kin will be to the cloud users what Linux is for machines.

Installation instructions
=========================

1. Clone this repository into a folder
2. Install the following dependencies – below, to install for Ubuntu:

```
sudo apt-get install bash libssh2-1-dev libssh-dev libssl-dev libaio-dev mysql-server php7-cli php7-gd php7-imap php7-mysql php7-curl libmysqlclient-dev build-essential libmatheval-dev libmagic-dev libgd-dev libuv1 rsync valgrind-dbg libxml2-dev php7-readline cmake ssh make libsmbclient-dev libwebsockets-dev libsqlite3-dev
```

3. Build KinCore

```
echo "USE_SSH_THREADS_LIB=0" >> Config
echo "OPENSSL_INTERNAL=1" >> Config
make clean setup
make compile
make install
```

4. Create database / access

In your Kin folder:

```
sudo mysql
create user kinuser@localhost identified by "somepassword";
create database kindb;
use kindb;
source db/KinCoreDatabase.sql;
grant all privileges on kindb.* to kinuser@localhost;
flush privileges;
exit
```

5. Configure config file, located in build/cfg/cfg.ini (<a href="https://github.com/auraeinteractive/kin-legacy/blob/master/ConfiguringKin.md">Configuring Kin</a>)
   Also, note, if you haven't set up this file there's an example installed in build/cfg/cfg.ini.example - which you can rename to cfg.ini once you've set up your settings.
6. Once you have configured your cfg.ini file, run KinCore:

```
cd build/
./KinCore
```

You're done.

If you're using push notifications, you need to install composer and php Web Push:

```
sudo apt-get install composer
cd build/php
composer require minishlink/web-push
```

This will allow you to run web push, and enable in the cfg.ini:

```
[Security]
push_system = "php-web-push"
```

Configuring your server
-----------------------

* <a href="ConfiguringKin.md">Please see configuration file information here</a>.

Default login
-------------

Once the installation script is finished and your local KinCore is up and running use these credentials to log in: 
```
    User: fadmin
    Password: securefassword
```
The first thing you may want to do, is add a new user : run the 'System' application with "Run command" from the System menu on the Workspace.

Using site.ini
--------------

Once you have set everything up, you may want to customize your site. Create a file called site.ini in your build/ folder, and populate this ini file with a config like the following:

```
[Customization]
SiteName = "My Kin Site"
SiteShortName = "MySite"
Description = "The cool place to hang out for my organisation!"
BackgroundColor = "#000088"
```

Optional settings under [Customization]

```
SiteLogo = "mylogo.png"
SiteCSS = "mycss.css"
```

These files need to be located in build/cfg/ from where they will be copied to 
the active build resource for your Kin site.

The site.ini file can be modified to use your own favicon and other adaptations to give it your own identity or brand.


Optional packages
=================

Optional features and modules
-----------------------------

From of Kin 1.3.x you can use the install_optional.sh script to install 
special features for Kin that are not enabled by default, or uses 3rd
party projects in order to work. Current modules are:

 * SSHy for SSH functionality in Prompts (terminal application)
 * Web push (Minishlink) to enable web push notifications (in Convos)

Ports
-----

- 6502 -> used by main Kin Workspace. Needs to be forwarded by the router to permit remote access.
- 3306 -> used by MSQL database


Documentation
-------------

You can find the developer documentation in the docs folder. An administration guide will be added soon.

Licensing
=========

Kin is a large system consisting of several layers. It has a kernel core that is managing the Kin resources. This one is licensed under the MIT license. Then it has modules, DOS drivers and runtime linked libraries. These are licensed under the LGPLv3 license. Finally, we have the GUI for Kin - the Kin Workspace. This is licensed under the AGPLv3 license.

Tested - a lot
==============

We extensively test our platform and use https://www.browserstack.com/ for cross browser testing.

