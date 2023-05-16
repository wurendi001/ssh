#!/usr/bin/bash
Red_font_prefix="\033[31m"
Font_color_suffix="\033[0m"
clear     
    yum update -y && yum install -y curl && yum install -y socat && yum install wget -y
    apt update -y && apt install -y curl && apt install -y socat && apt install wget -y
        echo -e "###########################################################################"
	echo -e "#                     一键安装脚本"  
        echo -e "# 作者: 失落的梦                          "
	echo -e "# sldm云服务器购买网址：https://www.666uu66.asia "
	echo -e "# 导航站:https://www.meng666.buzz "
	echo -e "# 博客:https://www.kehu33.asia"
	echo -e "# 微信: Falltoher-1314 "
	echo -e "#  QQ: 1150315739     "
	echo -e  "###########################################################################"
	echo	
curl -s --max-time 10 "https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Foneforallofall%2Fcount&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false" | tail -3 | head -n 1 | awk '{print $5,$7}' >/dev/null 2>&1
bbr='bash <(curl -fsSL https://raw.githubusercontent.com/wurendi001/ssh/main/tcp2.sh)'
v2ray='bash <(curl -fsSL https://raw.githubusercontent.com/wurendi001/ssh/main/v2ray_mod1.sh)'
xray='bash <(curl -fsSL  https://raw.githubusercontent.com/wurendi001/ssh/main/xray_mod1.sh)'
IO='wget -qO- git.io/superbench.sh | bash'
back_route='curl https://raw.githubusercontent.com/zhanghanyun/backtrace/main/install.sh -sSf | sh'
back_route_de='wget -qO- git.io/besttrace | bash'
media='bash <(curl -L -s check.unlock.media)'
while true
do
read  -p "$(echo -e "请选择⬇

${Red_font_prefix}0${Font_color_suffix} bbr加速
${Red_font_prefix}1${Font_color_suffix} v2ray （选择多）
${Red_font_prefix}2${Font_color_suffix} xray  （选择多）
${Red_font_prefix}3${Font_color_suffix} IO硬盘和网络速度测试
${Red_font_prefix}4${Font_color_suffix} 回程路由
${Red_font_prefix}5${Font_color_suffix} 回程路由(详细)
${Red_font_prefix}6${Font_color_suffix} 流媒体解锁测试

\r\n
")" choose
	case $choose in
		0) eval $bbr ;;
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
