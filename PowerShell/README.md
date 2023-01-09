#Welcome to Windows setup tool v.0.3.0

##Introduction

The main purpose of the setup tool is to configure always required system settings immediately after a brand new Windows installation. That is the reason why this tool only configures a few settings. Some settings depend on the user's preferences.

##The configuration process

The major part of the configuration will be done automatically with PowerShell scripts. However, Windows does not allow script execution by default. Therefore, you have to open Windows PowerShell as an Administrator and run the ***Set-ExecutionPolicy Unrestricted*** command to enable script execution from untrusted authors. Afterwards just run the ***run_first.ps1*** and the ***run_second.ps1*** files by simply right-clicking them in the file explorer and clicking on ***run with PowerShell***.

There is always room for improvement, and I would be very excited to get a feedback about the scripts. Send me an e-mail on nordby.mikael@gmail.com.

##Manual configuration

The configuration process is mostly automated. However, there are some ***extra steps*** you have to do manually because ***some steps cannot be automated*** with PowerShell.

Here is a list of the steps you have to do manually:
- Set the task manager always on top
- Turn off mouse acceleration
