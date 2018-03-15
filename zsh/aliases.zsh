alias reload!='. ~/.zshrc'
alias ports='lsof -i -P -sTCP:LISTEN'
alias psgrep='ps aux|grep'
alias flushdns='sudo killall -v -HUP mDNSResponder'
alias f5-reset='sudo killall -v -9 svpn'
alias mci-p='pushd ~/dev/com.github/wix-private/crm-inbox-server/crm-profiles;mvn clean install -Pinboxserver;popd'
alias mci='pushd ~/dev/com.github/wix-private/crm-inbox-server;mvn clean install;popd'

