<#
This script is intendet to kill left over processes and some services of Adobe suite 
#>

$Adobeprocess="Adobe Desktop Service","AdobeIPCBroker","CCLibrary","CCXProcess","coresync","Adobe Desktop Service","Creative Cloud Helper","node";
#thsi variable pull all the nessasary processes for the termination wants beforehand
Write-output "These Processes Selected $AdobeProcess"; <#this will displays all the selected processes prior to the termination#>
start-sleep -second "2";
get-process -name $Adobeprocess | Stop-Process ; 
