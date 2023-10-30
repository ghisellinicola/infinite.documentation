Set-Variable -Name NSSM -Value "C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe"
Set-Variable -Name INFINITE_HOME -Value "C:\Users\uadm\Desktop\AGL"


function Watch-Variables {
	if (!$INFINITE_HOME) {
		Write-Error "INFINITE_HOME variable is null!"
		Exit
    }
	# Write-Output "-> Variables OK!"
}

function Check-Infinite-Services-Status {
    Write-Output "ocem-infinite-configurator-service status: "
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe status ocem-infinite-configurator-service

    Write-Output  "ocem-infinite-backend-service status: "
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe status ocem-infinite-backend-service

    Write-Output  "ocem-infinite-logger-service status: "
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe status ocem-infinite-logger-service

    Write-Output  "ocem-infinite-echo-gateway-service status: "
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe status ocem-infinite-echo-gateway-service
}


function Stop-Infinite-Services {
    Write-Output "Stopping ocem-infinite-configurator-service."
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe stop ocem-infinite-configurator-service

    Write-Output "Stopping ocem-infinite-backend-service."
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe stop ocem-infinite-backend-service

    Write-Output "Stopping ocem-infinite-logger-service."
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe stop ocem-infinite-logger-service

    Write-Output "Stopping ocem-infinite-echo-gateway-service."
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe stop ocem-infinite-echo-gateway-service
}


function Start-Infinite-Services {
    Write-Output "Starting ocem-infinite-configurator-service."
	[Environment]::SetEnvironmentVariable("OSPL_URI", "file://$($INFINITE_HOME)\_ddsConfigurations\ocem_configurator_1_ospl.xml", "User")
	Start-Sleep 1
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe start ocem-infinite-configurator-service
    
	Start-Sleep 5

    Write-Output "Starting ocem-infinite-backend-service."
	[Environment]::SetEnvironmentVariable("OSPL_URI", "file://$($INFINITE_HOME)\_ddsConfigurations\ocem_backend_1_ospl.xml", "User")
	Start-Sleep 1
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe start ocem-infinite-backend-service
    
	Start-Sleep 5

    Write-Output "Starting ocem-infinite-logger-service."
	[Environment]::SetEnvironmentVariable("OSPL_URI", "file://$($INFINITE_HOME)\_ddsConfigurations\ocem_logger_1_ospl.xml", "User")
	Start-Sleep 1
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe start ocem-infinite-logger-service
    
	Start-Sleep 5

    Write-Output "Starting ocem-infinite-echo-gateway-service."
	[Environment]::SetEnvironmentVariable("OSPL_URI", "file://$($INFINITE_HOME)\_ddsConfigurations\ocem_gateway_1M_ospl.xml", "User")
	Start-Sleep 1
    C:\Users\uadm\Desktop\AGL\installation-pack\nssm-2.24\win64\nssm.exe start ocem-infinite-echo-gateway-service
}

Check-Infinite-Services-Status
Start-Sleep 5
Stop-Infinite-Services
Start-Sleep 5
Check-Infinite-Services-Status
Start-Sleep 5
Start-Infinite-Services
Start-Sleep 5
Check-Infinite-Services-Status
Start-Sleep 5