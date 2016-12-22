
$ErrorActionPreference = 'Stop';

$packageName= 'ksign'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://cdn1.ksoftware.net/ksign_installer3.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'ksign*'

  checksum      = '1D962E8AECD3F5B722F986B36298A44AD52E03B1E019D43ED51B63303C1B0416'
  checksumType  = 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs


















