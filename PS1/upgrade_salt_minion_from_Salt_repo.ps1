################################################################################
#  
#  Bacon Unlimited
#  __________________
#  
#   [2018] - [2021] Bacon Unlimited 
#   All Rights Reserved.
#  
#  NOTICE:  All information contained herein is, and remains
#  the property of Bacon Unlimited and its suppliers,
#  if any.  The intellectual and technical concepts contained
#  herein are proprietary to Bacon Unlimited
#  and its suppliers and may be covered by U.S. and Foreign Patents,
#  patents in process, and are protected by trade secret or copyright law.
#  Dissemination of this information or reproduction of this material
#  is strictly forbidden unless prior written permission is obtained
#  from Bacon Unlimited.
################################################################################

# Downloads the Salt EXE installer directly from Salt's repo - requires Internet access on minion
$target_salt_version = "3002.6"

salt-call cp.get_url "https://repo.saltproject.io/windows/Salt-Minion-$target_salt_version-Py3-AMD64-Setup.exe" "C:\temp\SaltInstall_$target_salt_version.exe" makedirs=True source_hash="https://repo.saltproject.io/windows/Salt-Minion-$target_salt_version-Py3-AMD64-Setup.exe.sha256"

Start-Process -FilePath "C:\temp\SaltInstall_$target_salt_version.exe" -ArgumentList "/S"
