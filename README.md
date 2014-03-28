pidora18-wildfly8.img
==========================
This pidora18 image is installed with Wildfly-8.0.0.Final and openjdk7. Wildfly start script is added under /etc/init.d, and Wildfly-8.0.0.Final will be started at boot. Download this image from https://www.dropbox.com/s/zqtvlcek6nb0l1q/pidora18-wildfly18.img.gz  
#1.What's configued/installed 
 wildfly-8.0.0.Final is downloaded under /home/jbosspi
 openjdk7 is installed
 modified /home/jbosspi/.bashrc and added /etc/init.d/wildfly
 All the modified and new added file can be found in this repository.
#2.how to burn this image
 mac or linux user:
 ```
 dd bs=1m if=[DISK IMAGE NAME] of=[FILESYSTEM]
 ```
 windows user can burn it with Win32DiskImager
#3.Username and password
  root/jbosspi  
  jbosspi/jbosspi
#4.Resize Root filesystem (**Important**)
  After burn this image and start the Pi,you need to log in as root user and run firstboot to resize filesystem to get more disk space, more details please see "FileSystem Setting" in firstboot GUI.
  ```
  su root
  password:
  firstboot
  ```
#5.Wildfly start script
   Wildfly is started with Wildfly-8.0.0.Final/bin/start_pi.sh. It will start the standalone.xml profile by default and with flag -b 0.0.0.0 to bind all ip address and localhost.
#6.Configure WIFI dongle and Ethernet network IP address
   The easy way could be running "init 5" or "startx" to configure network under GUI. 
   
