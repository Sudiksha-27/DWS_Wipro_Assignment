#""Show-ADTInstallationPrompt""
#Displays a custom installation prompt with the toolkit branding and optional buttons.Any combination of Left, Middle, or Right buttons can be displayed. 
Show-ADTInstallationPrompt -Title 'Funny Prompt' -Message 'How are you feeling today?' -ButtonRightText 'Good' -ButtonLeftText 'Bad' -ButtonMiddleText 'Indifferent'
Show-ADTInstallationPrompt -Message 'Do you want to proceed with the installation?' -ButtonRightText 'Yes' -ButtonLeftText 'No'


#Show-ADTInstallationRestartPrompt
#Displays a restart prompt with a countdown to a forced restart.
#Displays a restart prompt without a countdown.
Show-ADTInstallationRestartPrompt -NoCountdown

#Displays a restart prompt with a 300-second countdown.
Show-ADTInstallationRestartPrompt -CountdownSeconds 300

#"""Show-ADTInstallationProgress"""
#Displays a progress dialog in a separate thread with an updateable custom message.
Show-ADTInstallationProgress
Show-ADTInstallationProgress -StatusMessage 'Installation in Progress...'

#"""Show-ADTInstallationWelcome"""
#Show a welcome dialog prompting the user with information about the deployment and actions to be performed before the deployment can begin.
#Close Word and Excel without prompting the user.
Show-ADTInstallationWelcome -CloseProcesses @(@{ Name = 'winword' }, @{ Name = 'excel' }) -Silent


#"""Show-ADTBalloonTip"""
#Displays a balloon tip notification in the system tray.
#Displays a balloon tip with the text 'Installation Started' and the title 'Application Name'
Show-ADTBalloonTip -BalloonTipText 'Installation Started' -BalloonTipTitle 'Application Name'
Show-ADTBalloonTip -BalloonTipIcon 'Info' -BalloonTipText 'Installation Started' -BalloonTipTitle 'Application Name' -BalloonTipTime 1000

#"""Show-ADTDialogBox"""
#Display a custom dialog box with optional title, buttons, icon, and timeout.
Show-ADTDialogBox -Title 'Installation Notice' -Text 'Installation will take approximately 30 minutes. Do you wish to proceed?' -Buttons 'OKCancel' -DefaultButton 'Second' -Icon 'Exclamation' -Timeout 600 










