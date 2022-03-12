@echo off
set myssh=ssh -i "%USERPROFILE%\.ssh\universal-swamix-key.pem" ec2-user@ec2-3-109-221-241.ap-south-1.compute.amazonaws.com
set s3path=s3://cloud-workspace/WEB_TECHBINGE/
echo VARIABLES HAVE BEEN SET!
@echo on



:: TEST
:: %myssh%
