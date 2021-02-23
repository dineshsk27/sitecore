# Not service 503  responce
While login to the server, I got a 503 responce in browser for localhost

Then I checked the IIS service, It is in stop state and can't able't start getting some error, 

Then I started troubleshooting the issue with error, So I fund solution to take the backup of IIS machine key and I reinstalled IIS6 service with the option of 

# Control Panel -> Turn windows features on r off -> unselect the IIS6 -> remove

# Control Panel -> Turn windows features on r off -> select the IIS6 -> Install

After the retsart, IIS become Up, then login to **IIS manager -> Application Pool -> DeviceAppPool -> Advanced Setting -> Identity ** have AppPoolServiceUser User

So I go to Computer Management -> Local Users and Groups -> Users -> "left click on AppPoolServiceUser -> set password -> create new password -> save"

Then I updated the same username and password in  **IIS manager -> Application Pool -> DeviceAppPool -> Advanced Setting -> Identity ** have AppPoolServiceUser User

After the IIS restart the server became Up, Can able to get webpage.

_________________END____________________


