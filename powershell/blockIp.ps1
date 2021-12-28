# Up
netsh advfirewall firewall add rule name=”lolchat” dir=out remoteip=192.64.174.69 protocol=TCP action=block

# Down
netsh advfirewall firewall delete rule name= “lolchat”
