# Get ip
:: Server list:
:: BR     br.chat.si.riotgames.com
:: EUNE   eun1.chat.si.riotgames.com
:: EUW    euw1.chat.si.riotgames.com
:: JP     jp1.chat.si.riotgames.com
:: LAN    la1.chat.si.riotgames.com
:: LAS    la2.chat.si.riotgames.com
:: NA     na2.chat.si.riotgames.com
:: OCE    oc1.chat.si.riotgames.com
:: PH     ph1.chat.si.riotgames.com
:: RU     ru1.chat.si.riotgames.com
:: SG     sg1.chat.si.riotgames.com
:: TH     th1.chat.si.riotgames.com
:: TR     tr1.chat.si.riotgames.com
:: TW     tw1.chat.si.riotgames.com
:: VN     vn1.chat.si.riotgames.com
ping -4 na2.chat.si.riotgames.com

# Up
netsh advfirewall firewall add rule name=”lolchat” dir=out remoteip=192.64.174.69 protocol=TCP action=block

# Down
netsh advfirewall firewall delete rule name= “lolchat”
