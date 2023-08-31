# Installation Guide

<!-- # Installation Notes & Installation Guide with screenshots -->

## Steps

0. Install Operating System

1. Create System Users
   
	See [Naming Conventions](./naming-conventions.md).

2. Installing SW Tools ( TODO: attach installation pack )
  
	* OpenSplice: 
    	* environment variables;
    	* license;
    	* default configurations folder
	* Maria DB (with drivers/connector)


	* DBeaver 
	* .net 5 + 6 (sdk, runtime is installed within the sdk)


	* AnyDesk
	* TightVNC


	* notepad ++ 


	* Chromium?

3. Modules installations (for each pc):
   
	a. [ST5] Install modules deployments ( TODO: fix the folder D:\INFINITE\deployments? )
	
		* generate/install certificates (D:\INFINITE\_configs\certs)
		* set hostnames


		* setup shared folder (D:\Shared)


		* adjust path in configuration files
		* change log verbosity


		* install and configure configurator build (D:\INFINTE\deployement\configurator_pc)
		* install and configure backend build (D:\INFINTE\deployement\backend_pc)
     	* install and configure logger build (D:\INFINTE\deployement\logger_pc)


     	* services (nssm) -> configurator is delayed
     	* services change AutoStartDelay to 15000 -> regedit


     	* disable hot keys (HotKeys + PowerToys)
     	* setup lock screen and profile image

	b. [OCEM] Install modules deployments ( TODO: fix the folder D:\DBs\apps? )
	
		* field gateway
		* bridge ( if needed -> lonworks )
		* frontend wrapper

4. System configuration tuning
