# Office 2021 Installer

## What is Office 2021 Installer for?

This tool helps you to uninstall your previous Office Version (thanks to this [tool](https://github.com/ManuelGil/Uninstall-Office-2016.git)) and install the last Office Professional Plus version

## How can I use this?
1. Ensure you have Git installed in your computer (must be Windows).
2. Open CMD (as admin or as user) and write the following: `git clone https://github.com/Criscraft-333/office-2021-installer.git`
3. Congrats! You just got the installer in your local computer.

## What's the file order?
You need to execute `UninstallO16.cmd` (as admin) first to get rid of your current Office. Then, open a CMD (as admin) and execute:
```batch
setup /download configuration.xml
setup /configure configuration.xml
```
