<#
.NOTES
  Version:        1.0
  Author:         HoonJo
  Creation Date:  2018.05.05
  Purpose/Change: env_ready_4_windows  
#>

# winrm communicate between ans-svr n ans-node(Windows)
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'