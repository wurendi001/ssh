#!/usr/bin/bash
Red_font_prefix="\033[31m"
Font_color_suffix="\033[0m"
    yum install -y curl wget 2> /dev/null || apt install -y curl wget
clear     
	echo -e "########################################################################################################################"
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
	echo -e  "##########################################################################################################################"
    
v2ray='bash <(curl -fsSL https://raw.githubusercontent.com/wurendi001/ssh/main/v2ray_mod1.sh)'
xray='bash <(curl -fsSL  https://raw.githubusercontent.com/wurendi001/ssh/main/xray_mod1.sh)'
IO='wget -qO- git.io/superbench.sh | bash'
back_route='curl https://raw.githubusercontent.com/zhanghanyun/backtrace/main/install.sh -sSf | sh'
back_route_de='wget -qO- git.io/besttrace | bash'
media='bash <(curl -L -s check.unlock.media)'
while true
do
read  -p "$(echo -e "请选择

${Red_font_prefix}1${Font_color_suffix} v2ray （选择多）
${Red_font_prefix}2${Font_color_suffix} xray  （选择多）
${Red_font_prefix}3${Font_color_suffix} IO硬盘和网络速度测试
${Red_font_prefix}4${Font_color_suffix} 回程路由
${Red_font_prefix}5${Font_color_suffix} 回程路由(详细)
${Red_font_prefix}6${Font_color_suffix} 流媒体解锁测试

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
