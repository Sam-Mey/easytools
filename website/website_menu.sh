#!/bin/bash

clear  # 清屏

# 进入脚本所在目录
cd "$(dirname "$0")"

# 保存脚本所在目录的路径
SCRIPT_DIR="/easytools/website"

# 引入配置
. "/easytools/config.sh"

# Define colors and styles using tput
BOLD=$(tput bold)
GRAY=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
PURPLE=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)

RESET=$(tput sgr0)

# Define menu options
options=(
    "${BOLD}${PURPLE} 部署 sspanel >> ${RESET}"
    "${BOLD}${PURPLE} 部署 v2board >> ${RESET}"
    "${BOLD}${PURPLE} 部署 wordpress >> ${RESET}"
    "${BOLD}${GRAY} 开发中... >> ${RESET}\n"
    "${BOLD}${RED} 返回主菜单 ${RESET}"
)

# Show website_menu
function show_website_menu() {
    echo -e "${BOLD}${PURPLE}======== 站点部署 ========${RESET}\n"
    for i in "${!options[@]}"; do
        if [[ $i -eq $(( ${#options[@]} - 1 )) ]]; then
            echo -e "${BOLD}${RED}m. ${options[$i]}${RESET}\n"  # 将返回选项标记为红色
        else
            echo -e "${BOLD}${PURPLE}$((i+1)). ${options[$i]}${RESET}"
        fi
    done
}

# Handle user choice
function handle_choice() {
    read -p "${BOLD}${BLUE} 请输入选项编号: ${RESET}" choice
    case $choice in
        1)
            clear
            echo -e "${BOLD}${PURPLE} 部署 sspanel ${RESET}"
            "$SSPANEL_MENU_SCRIPT_PATH"
        ;;
        2)
            clear
            echo -e "${BOLD}${PURPLE} 部署 v2board ${RESET}"
        ;;
        3)
            clear
            echo -e "${BOLD}${PURPLE} 部署 wordpress ${RESET}"
            # 在这里添加选项三的操作
        ;;
        4)
            clear
            echo -e "${BOLD}${PURPLE} 开发中... ${RESET}"
            # 在这里添加选项三的操作
        ;;
        M|m)
            clear
            echo "${BOLD}${RED} [主菜单] ${RESET}"
        ;;
        *)
            clear
            echo -e "${BOLD}${RED} 无效选项，请重新选择 ${RESET}"
        ;;
    esac
}

# 主循环
while true; do
    show_website_menu
    handle_choice
    if [[ $choice == "m" || $choice == "M" ]]; then
        break  # 退出循环，返回到调用的主菜单
    fi
done
