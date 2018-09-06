$acctKey = ConvertTo-SecureString -String "g1dcp7XrUtwsKPxpsDG7X/uArvLIR+3XXDVTVq8P+s0Sw/4Klsb5bAWCTaeAwiFfqSU93zUHHYAhmVOhbRO98A==" -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential -ArgumentList "Azure\safileshare", $acctKey
New-PSDrive -Name Z -PSProvider FileSystem -Root "\\safileshare.file.core.windows.net\scalesetfs" -Credential $credential -Persist