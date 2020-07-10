# set password
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "Hello_$1_&2020"

# create user from "Userlist.csv" -> replace domain-name in userlist.csv
Import-Csv -Path .\Userlist.csv | foreach {New-AzureADUser -DisplayName $_.DisplayName -PasswordProfile $PasswordProfile -UserPrincipalName $_.UserPrincipalName -AccountEnabled $true -MailNickName $_.MailNickName -Surname $_.Surname -GivenName $_.Givenname -Department $_.Department -JobTitle $_.JobTitle -City $_.City}

# Optional: Set Manager/Supervisor
Import-Csv -Path .\Userlist.csv | foreach {Set-AzureADUserManager -ObjectId $_.UserPrincipalName -RefObjectId (Get-AzureAdUser -ObjectId $_.Manager).ObjectId}
