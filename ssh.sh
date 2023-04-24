#!/usr/bin/bash
Red_font_prefix="\033[31m"
Font_color_suffix="\033[0m"

clear     
	echo "########################################################################################################################"
	echo -e "#                     一键安装脚本${PLAIN}
#"
	echo -e "# 作者: 失落的梦                          
#"
	echo -e "# 导航站:https://www.meng666.buzz 
#"
	echo -e "# 博客:https://www.kehu33.asia
#"
	echo -e "# 微信: Falltoher-1314
#"
	echo -e "#  QQ: 1150315739 
#"
	echo "##########################################################################################################################"
	
apt install -y  aptitude apt-get  jq  dnsutils wget curl sudo
aptitude  install  -y  jq  dnsutils wget curl 
apt-get  -y install  jq  dnsutils wget curl    sudo  
dnf install -y bind-utils  >/dev/null 2>&1
yum install -y bind-utils >/dev/null 2>&1

v2ray='bash <(curl -fsSL  https://raw.githubusercontent.com/oneforallofall/oneforall/main/v2ray.sh)'
xray='bash <(curl -fsSL  https://raw.githubusercontent.com/wurendi001/ssh/main/xray_mod1.sh )'
curl -s --max-time 10 "https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Foneforallofall%2Fcount&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false" | tail -3 | head -n 1 | awk '{print $5,$7}' >/dev/null 2>&1
IO='wget -qO- git.io/superbench.sh | bash'
back_route='curl https://raw.githubusercontent.com/zhanghanyun/backtrace/main/install.sh -sSf | sh'
back_route_de='wget -qO- git.io/besttrace | bash'
media='bash <(curl -L -s check.unlock.media)'

while true
do
read  -p "$(echo -e "请选择
	echo "##########################################################################################################################"
${Red_font_prefix}1${Font_color_suffix} v2ray （选择多）
${Red_font_prefix}2${Font_color_suffix} xray  （选择多）
${Red_font_prefix}3${Font_color_suffix} IO硬盘和网络速度测试
${Red_font_prefix}4${Font_color_suffix} 回程路由
${Red_font_prefix}5${Font_color_suffix} 回程路由(详细)
${Red_font_prefix}6${Font_color_suffix} 流媒体解锁测试
	echo "##########################################################################################################################"
\r\n
")" choose
	case $choose in
		1) eval $v2ray ;;
		2) eval $xray ;;
		3) eval $IO ;;
		4) eval $back_route ;;
		5) eval $back_route_de ;;
		6) eval $media ;;
		*) echo "wrong input" ;;
	esac

done
exit
