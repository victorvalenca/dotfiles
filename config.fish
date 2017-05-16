set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish

set -gx TOMCAT /usr/local/apache-tomcat-8.0.32/bin
set -gx ANDROID_HOME /usr/local/opt/android-sdk
set -gx CODE $HOME/code
set -gx HASKELL $HOME/Library/Haskell/bin
set -gx GOPATH $CODE/go
set -gx MYSQL /usr/local/mysql/bin
set -gx MYSQLD /usr/local/mysql/support-files

set -gx PATH $PATH $TOMCAT $ANDROID_HOME $CODE $HASKELL $MYSQL $MYSQLD

export BACKPLANE_TOKEN=aSoV1Lf8wQjbViXxbAS91SrMLsdu_05mYNa99CkEoyJKP6ewybcAeNepkplV6X0wUOIsIdQ4se1BbQRiqeoTIkB1H1CDEfITeqU=

function ixio
	curl -n -F 'f:1=<-' http://ix.io
	end

function sprunge
	curl -F "sprunge=<-" http://sprunge.us
end

function fish_prompt
	echo -ns (set_color green -o) "$USER"@(hostname -s) ' '
	echo -ns (set_color white -o) (set_color -b 060) (prompt_pwd)
	echo -ns (set_color cyan -o) (set_color -b normal) ' >'
	echo -ns (set_color normal) ' '
end

function fish_title
	echo "$USER" (pwd)
end
