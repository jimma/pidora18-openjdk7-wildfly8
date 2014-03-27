pidora18-wildfly8.img
==========================
This pidora18 image is installed with Wildfly-8.0.0.Final and openjdk7. Wildfly start script is added under /etc/init.d, and Wildfly-8.0.0.Final will be started at boot.  
#1.What's configued/installed 
 wildfly-8.0.0.Final is downloaded under /home/jbosspi
 openjdk7 is installed
 modified /home/jbosspi/.bashrc and added /etc/init.d/wildfly
#2.how to burn this image
 mac or linux user:
 ```
 dd bs=1m if=[DISK IMAGE NAME] of=[FILESYSTEM]
 ```
 windows user can burn it with Win32DiskImager
#3.user and password
  username:root      password:jbosspi  
  username:jbosspi   password:jbosspi
#4.Resize Root filesystem
  After burn this image and start the Pi,you need to log in as root user and run firstboot to resize filesystem to get more disk space, more details please see "FileSystem Setting" in firstboot GUI.
  ```
  su root
  password:
  firstboot
  ```
