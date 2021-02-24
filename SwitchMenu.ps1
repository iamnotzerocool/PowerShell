<#	
	.NOTES
	===========================================================================
	 Created with: 	VSCode
	 Created on:   	1/10/2021 10:36 PM
	 Created by:   	iamnotzerocool
	 Organization: 	
	 Filename:     	SwitchMenu.ps1
	===========================================================================
	.DESCRIPTION
		Simple example of using a switch to call functions.
#>



#############################################################################################
### Functions
#############################################################################################

###############################################
function Function_One {
Write-Host "Function One completed!"
}
###############################################

###############################################
function Function_Two {
Write-Host "Function Two completed!"
}
###############################################

###############################################
function Function_Three {
Write-Host "Function Three completed!"
}
###############################################    


    
#############################################################################################
### Menu
#############################################################################################
do {
Write-Host ""
Write-Host "(1): Do this thing"
Write-Host "(2): Do something else"
Write-Host "(3): Do yet another thing"
Write-Host ""
Write-Host ""
Write-Host "(Q): Quit" -BackgroundColor Red
Write-Host ""
$menuinput = (Read-Host "Please make a selection").ToUpper()

switch ($menuinput)
{
    '1' {Function_One}
    '2' {Function_Two}
    '3' {Function_Three}
    'Q' {Write-Host "Quitting..." -BackgroundColor Red -ForegroundColor White}
    Default {Write-Host "Your selection = $input, is not valid. Please try again." -BackgroundColor Red -ForegroundColor White}
}

} while ($menuinput -ne 'Q' ) 
