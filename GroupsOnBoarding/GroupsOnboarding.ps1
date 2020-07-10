# create dynmic groups (Departments)
New-AzureADMSGroup `
    -DisplayName "Geschäftsleitung" `
    -Description "Geschäftsleitung" `
    -MailEnabled $True `
    -SecurityEnabled $True `
    -MailNickname "GL" `
    -GroupTypes "DynamicMembership", "Unified" `
    -MembershipRule "(user.department -contains ""GL"")" `
    -MembershipRuleProcessingState "On"

New-AzureADMSGroup `
    -DisplayName "Sales" `
    -Description "Abteilung Sales" `
    -MailEnabled $True `
    -SecurityEnabled $True `
    -MailNickname "Sales" `
    -GroupTypes "DynamicMembership", "Unified" `
    -MembershipRule "(user.department -contains ""Sales"")" `
    -MembershipRuleProcessingState "On"

New-AzureADMSGroup `
    -DisplayName "Support" `
    -Description "Abteilung Support" `
    -MailEnabled $True `
    -SecurityEnabled $True `
    -MailNickname "Support" `
    -GroupTypes "DynamicMembership", "Unified" `
    -MembershipRule "(user.department -contains ""Support"")" `
    -MembershipRuleProcessingState "On"

New-AzureADMSGroup `
    -DisplayName "Admin" `
    -Description "Abteilung Admin" `
    -MailEnabled $True `
    -SecurityEnabled $True `
    -MailNickname "Admin" `
    -GroupTypes "DynamicMembership", "Unified" `
    -MembershipRule "(user.department -contains ""Admin"")" `
    -MembershipRuleProcessingState "On"

New-AzureADMSGroup `
    -DisplayName "Abteilungsleiter" `
    -Description "Alle Abteilungsleiter" `
    -MailEnabled $True `
    -SecurityEnabled $True `
    -MailNickname "Abteilungsleiter" `
    -GroupTypes "DynamicMembership", "Unified" `
    -MembershipRule "(user.jobTitle -contains ""Head"")" `
    -MembershipRuleProcessingState "On"

New-AzureADMSGroup `
    -DisplayName "Lernende" `
    -Description "Alle Lernende oder in Ausbilung" `
    -MailEnabled $True `
    -SecurityEnabled $True `
    -MailNickname "Lerndende" `
    -GroupTypes "DynamicMembership", "Unified" `
    -MembershipRule "(user.jobTitle -contains ""AzuBi"")" `
    -MembershipRuleProcessingState "On"

New-AzureADMSGroup `
    -DisplayName "HR" `
    -Description "Personalabteilung" `
    -MailEnabled $True `
    -SecurityEnabled $True `
    -MailNickname "HR" `
    -GroupTypes "DynamicMembership", "Unified" `
    -MembershipRule "(user.jobTitle -contains ""HR"" or (user.department -contains ""GL""))" `
    -MembershipRuleProcessingState "On"

New-AzureADMSGroup `
    -DisplayName "Finance" `
    -Description "Finanzabteilung" `
    -MailEnabled $True `
    -SecurityEnabled $True `
    -MailNickname "Finance" `
    -GroupTypes "DynamicMembership", "Unified" `
    -MembershipRule "(user.jobTitle -contains ""Finance"" or (user.department -contains ""GL""))" `
    -MembershipRuleProcessingState "On"

New-AzureADMSGroup `
    -DisplayName "Alle_MA" `
    -Description "Alle Mitarbeiter" `
    -MailEnabled $True `
    -SecurityEnabled $True `
    -MailNickname "Alle" `
    -GroupTypes "DynamicMembership", "Unified" `
    -MembershipRule "(user.department -contains ""GL"") or (user.department -contains ""Support"") or (user.department -contains ""Admin"") or (user.department -contains ""Sales"")" `
    -MembershipRuleProcessingState "On"

# Optional: create dynmic groups (Intune, Windows Autopilot)
    New-AzureADMSGroup `
    -DisplayName "_Intune_AutoPilot_Win10-Standard"  `
    -Description "Intune AutoPilot Standard Windows 10" `
    -MailEnabled $False `
    -MailNickName "none" `
    -SecurityEnabled $True `
    -GroupTypes "DynamicMembership" `
    -MembershipRule "(device.devicePhysicalIds -any _ -eq ""[OrderID]:Win10-Standard"")" `
    -MembershipRuleProcessingState "On"

New-AzureADMSGroup `
    -DisplayName "_Intune_AutoPilot_Win10-Kiosk"  `
    -Description "Intune AutoPilot Kiosk Windows 10" `
    -MailEnabled $False `
    -MailNickName "none" `
    -SecurityEnabled $True `
    -GroupTypes "DynamicMembership" `
    -MembershipRule "(device.devicePhysicalIds -any _ -eq ""[OrderID]:Win10-Kiosk"")" `
    -MembershipRuleProcessingState "On"

New-AzureADMSGroup `
    -DisplayName "_Intune_AutoPilot_Win10-ARM"  `
    -Description "Intune AutoPilot ARM Windows 10" `
    -MailEnabled $False `
    -MailNickName "none" `
    -SecurityEnabled $True `
    -GroupTypes "DynamicMembership" `
    -MembershipRule "(device.devicePhysicalIds -any _ -eq ""[OrderID]:Win10-ARM"")" `
    -MembershipRuleProcessingState "On"

# Optional: create dynmic groups (Intune, Android Enterprise)
New-AzureADMSGroup `
    -DisplayName "_Intune_Android_Enterprise"  `
    -Description "Intune Android Enterprise Device" `
    -MailEnabled $False `
    -MailNickName "none" `
    -SecurityEnabled $True `
    -GroupTypes "DynamicMembership" `
    -MembershipRule "(device.enrollmentProfileName -eq ""Android_Enterprise"")" `
    -MembershipRuleProcessingState "On"

New-AzureADMSGroup `
    -DisplayName "_Intune_Android_Kiosk"  `
    -Description "Intune Android Kiosk Device" `
    -MailEnabled $False `
    -MailNickName "none" `
    -SecurityEnabled $True `
    -GroupTypes "DynamicMembership" `
    -MembershipRule "(device.enrollmentProfileName -eq ""Android_Kiosk"")" `
    -MembershipRuleProcessingState "On"