# DisableSatanInside-10
Status: Alpha

### Development
- Un-tested, do not use; waiting for appropriate point to run it on the laptop, when I have no other tasks. See below in preview if you are interested in which services are affected, and do it manually for now.

### Description
This is a simple program to disable all Windows 10 services related to Active Directory, a set of services completely un-necessary if you intend to use your Windows based PC for Movies and Gaming, but definately nothing to do with sharing resources on the network or updating windows. I did the modifications manually, and my Windows 10 PC still booted fine. I did a session with GPT4o and figured out ALL the services related to Active Directory, that I could safely disable, while still being able to access the internet, as well as play, games and movies and music. Its one of those things you would do last when installing a windows 10 computer, probably after using my other program AntiMsSpyware.

### Features
- Glorified menu with simple interface.
- Admin and OS, check at start.
- Confirmations of each modification.
- Pause at end of Enable/Disable for review.

### Preview
```
========================================================================================================================
    Disable Satan Inside 10
========================================================================================================================

    Affected Services:
    - Netlogon
    - Group Policy Client
    - Windows Time
    - Remote Desktop Configuration
    - Remote Desktop Services
    - Remote Registry
    - IP Helper
    - SSDP Discovery
    - Function Discovery Provider Host
    - Function Discovery Resource Publication
    - Windows Error Reporting Service
    - Diagnostic Policy Service
    - Windows Update

------------------------------------------------------------------------------------------------------------------------
Selection; Disable All = D, Enable All = E, Exit Program = X: 
```

## Requirements
- Windows 10 with Scripting Enabled.
- Administrator rights.

### Instructions
1. Do not use this until I have tested it, I warn you unexpected results may occur, most likely, an error will pop up or the script will unexpectedly exit.
2. Create restore point from `Control Panel>System>System Restore>Create`.
3. Right click on the batch, then select "Run as Administrator".
4. Choose Disable All from menu with `D` key, and check feedback on screen.
5. Restart computer, and test everything you intend to use still works.

## Notation
- Lore: Active Directory (AD) used to be known as ADAM, and while the closet case Satanists may claim Adam is the first man, in actual historic recording, Adamu was a deity that was smashed into 1000s of slave beings, becaues he subversively, manipulated and turned, the gods on one another alike a Rupert Murdock, and so, the ADAMU is by definition SATAN. Depends what you believe; did you do your own comprehensive research or did a slaver organizations controlled by false archons just hand you their approved version of history.
- Its interesting as a concept, because a pro Windows home user of many years experience will know some of those services should definately be disabled unless you specifically need to use them, especially after the bulk of the install process is done, but how ALL of them pretty much are falling within AD, albeit can you argue about the "Devil/Satan Inside" meme could logically have correlation with these services.

## Warnings
- You should know what you are doing, and research what each one does. 
- I say again do not use this script, unless you have backed up your settings.  
