# Installation Guide

## Steps

0. Install Operating System

1. Create System Users
   
	See [Naming Conventions](./naming-conventions.md).

2. Installing SW Tools ( TODO: attach installation pack )
  
	* OpenSplice
	* Maria DB (with drivers/connector)
	* .net 5 + 6 (sdk + runtime)
	* 
	* DBeaver 
	* AnyDesk
	* notepad ++ 
	* 
	* Chromium?

3. Modules installations (for each pc):
   
	a. [ST5] Install modules deployments ( TODO: fix the folder D:\INFINITE\deployments? )
	
		* install certificates (D:\INFINITE\_configs\certs)
		* setup shared folder (D:\Shared)
		* configurator (D:\INFINTE\deployement\configurator_pc)
		* backend (D:\INFINTE\deployement\backend_pc)
     	* logger (D:\INFINTE\deployement\logger_pc)
     	* services (nssm) -> configurator is delayed
     	* services change AutoStartDelay to 15000 -> regedit

	b. [OCEM] Install modules deployments ( TODO: fix the folder D:\DBs\apps? )
	
		* field gateway
		* bridge ( if needed -> lonworks )
		* frontend wrapper

4. System configuration tuning
