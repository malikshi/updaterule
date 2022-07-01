#!/bin/bash
# shellcheck disable=SC2207

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

repo="https://raw.githubusercontent.com/malikshi/open_clash/main/rule_provider/"
provider_dir="/etc/openclash/rule_provider/"
rulesName="/tmp/rulesname"
cat >/tmp/rulesname << EOF
rule_umum
rule_portgames
rule_videoconferences
rule_indo
rule_sosmed
rule_streaming
rule_gaming
rule_speedtest
rule_discord
rule_hijacking
rule_privacy
rule_basicads
rule_personalads
rule_malicious
rule_falsepositive
rule_porn
rule_nsfw
rule_lancidr
rule_telegramcidr
rule_telegram
rule_disneyplus
rule_games
rule_hbo
rule_hbohk
rule_hboasia
rule_hbousa
rule_iqiyi
rule_iqiyiinter
rule_line
rule_metaverse
rule_netflix
rule_primevideo
rule_playstore
rule_tiktok
rule_twitch
rule_twitter
rule_youtube
EOF

clear
echo -e "${red}Script Ini Dibuat oleh malikshi dari IPTUNNELS${plain}"
echo -e "${red}----${plain}*${green}----${plain}*${yellow}----${plain}*${red}----${plain}*${green}----${plain}*${yellow}----${plain}*${red}----${plain}"
echo -e "${green}Memulai Update Rules${plain}"

data=($(cat $rulesName | grep 'rule_'));
for rules in "${data[@]}"
do
echo -e "${yellow}Updating ${rules} ...${plain}"
curl -s ${repo}"${rules}".yaml -o ${provider_dir}"${rules}".yaml
echo -e "${green}Update ${rules} done${plain}"
done
echo -e "${red}----${plain}*${green}----${plain}*${yellow}----${plain}*${red}----${plain}*${green}----${plain}*${yellow}----${plain}*${red}----${plain}"
echo -e "${green}Seleai Update Rules${plain}"
echo -e "${red}Chat Support Telegram: ${plain}${green}@synricha${plain}"
echo -e "${red}----${plain}*${green}----${plain}*${yellow}----${plain}*${red}----${plain}*${green}----${plain}*${yellow}----${plain}*${red}----${plain}"