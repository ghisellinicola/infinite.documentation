# Installation Guide

<!-- # Installation Notes & Installation Guide with screenshots -->

In order to install Infinite in one PC, it is mandatory to fulfill the following steps:
## 0. Install Operating System

## 1. Create System Users
   
See [Naming Conventions](./naming-conventions.md).

## 2. Installing SW Tools ( TODO: attach installation pack )

Open the installation pack and do the following operations:

### 1. OpenSplice: 

* install latest available patch;
* edit environment variables;
* generate [OCEM] and setup deployment license;
* adjust default configurations folder

### 2. Maria DB (with drivers/connector)

* install latest available maria DB version (fix a specific version?);
* install a JDBC connector

### 3. DBeaver 

* install latest available DBeaver version (fix a specific version?);
  
### 4. .net 5 + 6 (sdk, runtime is installed within the sdk)

* install .net 5 sdk (includes runtime) ( TODO: move to .net 6?)
* install .net 6 sdk (includes runtime)
  
### 5. AnyDesk / Supremo

* install a tool for remote management

### 6. TightVNC

* install a tool for remote management
  
### 7. Notepad ++ 

* install latest available notepad version in order to edit the configuration files

### 8. (stuffs for the OCEM desktop app)

* TODO
  
## 3. Modules installations (for each pc):
   
### [ST5] Install modules deployments 

	TODO: fix the folder D:\INFINITE\deployments ??
	
#### Certificates

* **Generate/install certificates**
  
	D:\INFINITE\_configs\certs	

Run the following script (TODO: customize adding variables)

 ``` 

	#OCEM

	#{{extra.airport}}.OCEM

	#TWR.{{extra.airport}}.OCEM
	$cert = New-SelfSignedCertificate -certstorelocation cert:\localmachine\my -dnsname twr.kulhudhuffushi.ocem

	$cert

	$pwd = ConvertTo-SecureString -String "3Jwhm6ZRfXBxJH2cuK5k5nHPPnzpzEdM" -Force -AsPlainText

	$certpath = "Cert:\localMachine\my\$($cert.Thumbprint)"

	Export-PfxCertificate -Cert $certpath -FilePath C:\Users\user\Desktop\AGL\_configs\certs\twr.kulhudhuffushi.ocem.pfx -Password $pwd

	#ELV.{{extra.airport}}.OCEM
	$cert = New-SelfSignedCertificate -certstorelocation cert:\localmachine\my -dnsname elv.kulhudhuffushi.ocem

	$cert

	$pwd = ConvertTo-SecureString -String "wtitn64fkhsRCYWybNrHZRRo6Jtmb2Ax" -Force -AsPlainText

	$certpath = "Cert:\localMachine\my\$($cert.Thumbprint)"

	Export-PfxCertificate -Cert $certpath -FilePath C:\Users\user\Desktop\AGL\_configs\certs\elv.kulhudhuffushi.ocem -Password $pwd



* **Set Hostnames**
  
Within notepad ++ open and edit the **C:\System32\driver\etc\host** or **C:\System32\driver\etc\host.ics** file adding the following row:

```

	<PC IP ADDESS> <APP DOMAIN>

```



* **Shared folder **

	(D:\Shared) (TODO: this data can be written into DDS ?? )


* **Dds configuration files**. 

	Here is CRUCIAL to change:

	- ** !!! NETWORK INTERFACE ACCORDING TO THE USED MACHINE !!! **
	- change log verbosity to INFOo WARNING

* **Modules**

	* install and configure configurator build (D:\INFINTE\deployement\configurator_pc)
	* install and configure backend build (D:\INFINTE\deployement\backend_pc)
	* install and configure logger build (D:\INFINTE\deployement\logger_pc)


* **Services**

	* services (nssm) -> configurator is delayed
	* services change AutoStartDelay to 15000 -> regedit
	
	![AutoStartDelay.jpg](../../../../assets/services/regedit/AutoStartDelay.jpg){ width="1000" }  <figcaption>AutoStartDelay regedit entry</figcaption>


* **Disable hot keys** 

	* HotKeys
	* PowerToys

* **Setup lock screen and profile image**

### [OCEM] **Install modules deployments**

	( TODO: fix the folder D:\DBs\apps? )
	
* **field gateway**
* **bridge** ( if ther is lonworks )
* **frontend wrapper**

### **System configuration tuning**

	Tests to check that everythink is working