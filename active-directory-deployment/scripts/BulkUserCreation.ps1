# Import Active Directory Module
Import-Module ActiveDirectory

# Define the target OU structure
$OUName = "Employees"
$DomainDN = (Get-ADDomain).DistinguishedName
$TargetOU = "OU=$OUName,$DomainDN"

# Create the OU if it doesn't exist
if (-not (Get-ADOrganizationalUnit -Filter "Name -eq '$OUName'")) {
    New-ADOrganizationalUnit -Name $OUName -Path $DomainDN
    Write-Host "Created Organizational Unit: $OUName" -ForegroundColor Green
}

# Import mock users from CSV
$Users = Import-Csv -Path "C:\path\to\your\names.csv"

foreach ($User in $Users) {
    $First = $User.FirstName
    $Last = $User.LastName
    $SAM = ($First[0] + $Last).ToLower() # e.g., jsmith
    $UPN = "$SAM@cyberlab.local"
    $Password = ConvertTo-SecureString "Password123!" -AsPlainText -Force
    
    # Check if user already exists
    if (-not (Get-ADUser -Filter "SamAccountName -eq '$SAM'")) {
        New-ADUser -Name "$First $Last" `
                   -GivenName $First `
                   -Surname $Last `
                   -SamAccountName $SAM `
                   -UserPrincipalName $UPN `
                   -Path $TargetOU `
                   -AccountPassword $Password `
                   -Enabled $true `
                   -ChangePasswordAtLogon $true
        
        Write-Host "Successfully created user: $SAM" -ForegroundColor Cyan
    }
}
