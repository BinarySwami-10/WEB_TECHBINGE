call ~CONSTANTS.cmd

aws s3 sync . %s3path% --exclude "**.git\**" --exclude ".git/*" --exclude "*\node_modules\*" --delete
%myssh% mkdir /srv/techbinge/
%myssh% aws s3 sync %s3path% /srv/techbinge/ --exclude "*/node_modules/*" --delete
%myssh% npm install nodemon express mongoose helmet