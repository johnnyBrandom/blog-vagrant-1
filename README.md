This repo contains Vagrant configuration and provisioning files for local host development of the [LibreBooking](https://github.com/johnnyBrandom/LibreBooking) php web app in a [Vagrant](https://www.vagrantup.com) development environment.

To use these files, you must install vagrant and [virtualbox](https://www.virtualbox.org) first. Once these are installed, you should clone this repository into your develpoment folder. Then, from within this project head, clone the LibreBooking repository into that path. In LbreBooking/config, you should configure the config.php.dev and rename it config.php. In the blog-vagrant folder, issue the vagrant up command and allow the virtual machine time to configure. Once complete, you will have a virtual machine with an apache2 server listening on port 80 at address 10.10.1.10. To complete the installation of LibreBooking, use your browser to navigate to IP 10.10.1.10/install and follow prompts.

A description of the vagrant LAMP stack and link to the original source files can be found here:

https://www.ewaldvanderveken.dev/setting-up-a-lamp-development-environment-in-vagrant/ 
