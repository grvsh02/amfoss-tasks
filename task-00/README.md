This task was easy as I was already using Kali Linux and knew basics of the terminal. I installed pop OS! instead of Ubuntu as it had nvidia graphics driver support out of the box and has a better gui. Being a debian based distro I can get the same funtionality of Ubuntu in pop OS. For those who are installing pop OS or any linux distro and have decided to dual boot it with windows, I would suggest to refer some guide before doing so as i myself messed up deleting the whole partition once and then had to recover my data. If you need some guidance about the Partition Schema, here is my order:  

**Mount point**|**Size**|**Description**
----------------|------------------|-----------------
/ | 20 GB | This is the root folder and should be atleast 15 GBs as if this folder is filled up your OS is useless
swap | 10 GB | If you have a 8 gb or less ram swap should be double, or else half the ram size is enough
/boot | 500 MB | Not compulsory but recomended as this way OS will have it's own boot partition and won't disturb the windows installation. 500mb to 1gb is more than enough
/home | 50 GB | This is where you store all the files. Size depends on your needs.  



Hope this helps. Cheers! 😄
