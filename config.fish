set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish

set -gx PATH $PATH /usr/local/tomcat/bin

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
	echo "$USER" (prompt_pwd)
end
