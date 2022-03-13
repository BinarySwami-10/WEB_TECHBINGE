@echo off

set myssh=ssh -i "%USERPROFILE%\.ssh\universal-swamix-key.pem" ec2-user@ec2-3-109-221-241.ap-south-1.compute.amazonaws.com
echo VARIABLES HAVE BEEN SET!

@echo on
