# Office 2021 Installer

## What is Office 2021 Installer for?

This tool helps you to uninstall your previous Office Version (thanks to this [tool](https://github.com/ManuelGil/Uninstall-Office-2016.git)) and install the last Office Professional Plus version.

## How can I use this?
1. Ensure you have Git installed in your computer (must be Windows).
2. Open CMD (as admin or as user) and write the following: `git clone https://github.com/Criscraft-333/office-2021-installer.git install-office`
3. Congrats! You just got the installer in your local computer.

## What's the file order?
You need to execute `UninstallO16.cmd` (as admin) first to get rid of your current Office (accept EULA, then 2, enter, 3, enter, 4 and enter). Then, open a CMD (as admin) and execute:
```cmd
cd install-office
setup /download configuration.xml
setup /configure configuration.xml
```

## I installed Office, but I can't activate it. 
No worries! If you look closely, there is a new file called `ActivateO21.cmd`. Right-click the file, then [Run as administrator]. Make sure you run it as admin, otherwise, you won't be able   to activate Office. You just need to answer the question (in this case, answer No, this installation is a 64-bits one), and the file will do everything for you. 
