call ~CONSTANTS.cmd
set s3path=s3://cloud-workspace/WEB_TECHBINGE/

aws s3 sync . %s3path% --exclude "**.git\**" --exclude ".git\*" --exclude "*node_modules\*" --delete

%myssh% mkdir -p $HOME/techbinge/
%myssh% aws s3 sync %s3path% $HOME/techbinge/ --exclude="*node_modules/*" --delete

%myssh% "cd techbinge/project_mosooklimo/backend && npm install"
%myssh% "cd techbinge/project_mosooklimo/backend ; sudo pkill node ; node . &"
timeout 15
pause