#!/bin/bash
echo '正在安装脚本依赖'
pkg install whiptail -y
if (whiptail --title "同意协议" --yes-button "我同意" --no-button "我拒绝"  --yesno "本脚本为termux一键安装MC面板(完全免费),由MIt_gancm制作 禁止二次售卖或商用" 10 60) then
##同意协议
##if1
    echo "你选择了同意 脚本继续运行."
    if (whiptail --title "我选择用" --yes-button "已经安装好prootubuntu并且在容器内执行" --no-button "我没有安装proot ubuntu"  --yesno "请选择使用哪种方式进行安装 " 15 70) then
    ##if2
    ##询问容器安装
  current_user=$(whoami)
if [ "$current_user" != "root" ]; then
##if3
##判断root权限
                echo "当前用户 $current_user 不具备root权限 请以root身份运行脚本"
        else
                echo "当前用户 $current_user 具备root权限"
                ##判断root权限完成
                whiptail --title "安装必要程序" --msgbox '' 10 60
                 if (whiptail --title "Java" --yes-button '我选择安装' --no-button "我选择不安装"  --yesno "安装全套JAVA文件具体要Java8/11/13/16/17 预计占用内存3GB(拒绝的无法开Java服务器 基岩版不受影响) " 15 70) then
                apt install openjdk-8-jdk -y
                apt install openjdk-11-jdk -y
                apt install openjdk-13-jdk -y
                apt install openjdk-16-jdk -y
                apt install openjdk-17-jdk -y
                else
                echo '继续安装wget'
                fi
                apt install wget -y
                whiptail --title "Java" --msgbox "后续使用sudo update-alternatives --config java选择默认Java版本" 10 60 
                  whiptail --title "安装面板" --msgbox "回车继续" 10 60
                  wget -qO- https://gitee.com/mcsmanager/script/raw/master/setup.sh | bash
                  whiptail --title "面板介绍" --msgbox "开源，分布式，轻量级，快速部署，支持大部分游戏服务端和控制台程序的管理面板。支持中英语言，一直在为 Minecraft，Terraria，Steam 游戏服务器管理员，运维人员和个人开发者提供健康的软件支持" 10 60
                    whiptail --title "开启面板（建议截图）" --msgbox "打开两个终端或两个 Screen 软件的终端窗口# 先启动守护进程cd /opt/mcsmanager/daemon# 启动node app.js# 然后启动面板端进程cd /opt/mcsmanager/web# 启动node app.js这一步要手动！！！" 15 60
               
                exit 1
        fi
        ##if3
  else
    whiptail --title "安装Linux" --msgbox "本人较懒所以使用别人脚本." 10 60
    whiptail --title "安装Linux" --msgbox '本脚本有“时雨🌌星空”提供 后续可通过tmoe打开进行管理"' 10 60
    whiptail --title "安装Linux" --msgbox '脚本安装完成后依次点击 “proot容器” (第一次安装会出现配置根据自己的设备进行选择即可) “arm64位发行版列表 ”“Ubuntu:我的存在是因為大家的存在”“20.04(LTS)焦點馬島長尾狸貓 Focal Fossa”“ 启动proot ubuntu-focal_arm64”' 10 60
    awk -f <(curl -L gitee.com/mo2/linux/raw/2/2.awk)
     whiptail --title "时雨🌌星空的脚本安装完成请把脚本放入容器再次执行" --msgbox "时雨🌌星空的脚本安装完成请把脚本放入容器再次执行" 10 60
    
    ##镜像安装
    fi
    ##if2
    ##结束容器选择
   else
    echo "你选择了不同意."
    echo '所以脚本退出'
   fi
##最外面一层 不同意协议
##if1