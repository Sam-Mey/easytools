#!/bin/bash

# 切换到脚本所在目录
cd "$(dirname "${BASH_SOURCE[0]}")"

# 保存脚本所在目录的路径
SCRIPT_DIR="/easytools"

CONFIG_SCRIPT_PATH="$SCRIPT_DIR/config.sh"
INSTALL_SCRIPT_PATH="$SCRIPT_DIR/install.sh"
MENU_SCRIPT_PATH="$SCRIPT_DIR/menu.sh"
TEMPLATE_SCRIPT_PATH="$SCRIPT_DIR/template.sh"
UNINSTALL_SCRIPT_PATH="$SCRIPT_DIR/uninstall.sh"
UPDATE_SCRIPT_PATH="$SCRIPT_DIR/update.sh"
DOCKER_SCRIPT_PATH="$SCRIPT_DIR/docker-lnmp/docker.sh"
DOCKER_LNMP_MENU_SCRIPT_PATH="$SCRIPT_DIR/docker-lnmp/docker_lnmp_menu.sh"
CHECK_CONTAINER_LOGS_SCRIPT_PATH="$SCRIPT_DIR/docker-lnmp/ubuntu-debian/arm64/check_container_logs.sh"
DELETE_CONTAINER_NETWORK_SCRIPT_PATH="$SCRIPT_DIR/docker-lnmp/ubuntu-debian/arm64/delete_container_network.sh"
DOCKER-COMPOSE_WORKDIR_SCRIPT_PATH="$SCRIPT_DIR/docker-lnmp/ubuntu-debian/arm64/docker-compose_workdir.sh"
GOIN_CONTAINER_SCRIPT_PATH="$SCRIPT_DIR/docker-lnmp/ubuntu-debian/arm64/goin_container.sh"
INSTALL_DOCKER_LNMP_SCRIPT_PATH="$SCRIPT_DIR/docker-lnmp/ubuntu-debian/arm64/install_docker_lnmp.sh"
SSL_MENU_SCRIPT_PATH="$SCRIPT_DIR/ssl/ssl_menu.sh"
CENTOS_ACME_SCRIPT_PATH="$SCRIPT_DIR/ssl/centos/centos_acme.sh"
UBUNTU_ACME_SCRIPT_PATH="$SCRIPT_DIR/ssl/ubuntu/ubuntu_acme.sh"
WARP_MENU_SCRIPT_PATH="$SCRIPT_DIR/warp/warp_menu.sh"
WEBSITE_MENU_SCRIPT_PATH="$SCRIPT_DIR/website/website_menu.sh"
SSPANEL_MENU_SCRIPT_PATH="$SCRIPT_DIR/website/sspanel/sspanel_menu.sh"
GET_SSPANEL_VERSION_SCRIPT_PATH="$SCRIPT_DIR/website/sspanel/ubuntu/get_sspanel_version.sh"
STEP1_SSL_SCRIPT_PATH="$SCRIPT_DIR/website/sspanel/ubuntu/step1_ssl.sh"
STEP2_INSTALL_SSPANEL_SCRIPT_PATH="$SCRIPT_DIR/website/sspanel/ubuntu/step2_install_sspanel.sh"
STEP3_NGINX_SCRIPT_PATH="$SCRIPT_DIR/website/sspanel/ubuntu/step3_nginx.conf.sh"
STEP4_INITIALIZATION_SITE_SCRIPT_PATH="$SCRIPT_DIR/website/sspanel/ubuntu/step4_initialization_site.sh"
UPDATE_SSPANEL_SCRIPT_PATH="$SCRIPT_DIR/website/sspanel/ubuntu/update_sspanel.sh"
INSTALL_V2BOARD_SCRIPT_PATH="$SCRIPT_DIR/website/v2board/install_v2board.sh"
UPDATA_V2BOARD_SCRIPT_PATH="$SCRIPT_DIR/website/v2board/updata_v2board.sh"

# 其他配置...

# 打印路径调试信息
# echo "CONFIG_SCRIPT_PATH: $CONFIG_SCRIPT_PATH"
# echo "INSTALL_SCRIPT_PATH: $INSTALL_SCRIPT_PATH"
# echo "MENU_SCRIPT_PATH: $MENU_SCRIPT_PATH"
# echo "TEMPLATE_SCRIPT_PATH: $TEMPLATE_SCRIPT_PATH"
# echo "UNINSTALL_SCRIPT_PATH: $UNINSTALL_SCRIPT_PATH"
# echo "UPDATE_SCRIPT_PATH: $UPDATE_SCRIPT_PATH"
# echo "DOCKER_SCRIPT_PATH: $DOCKER_SCRIPT_PATH"
# echo "DOCKER_LNMP_MENU_SCRIPT_PATH: $DOCKER_LNMP_MENU_SCRIPT_PATH"
# echo "CHECK_CONTAINER_LOGS_SCRIPT_PATH: $CHECK_CONTAINER_LOGS_SCRIPT_PATH"
# echo "DELETE_CONTAINER_NETWORK_SCRIPT_PATH: $DELETE_CONTAINER_NETWORK_SCRIPT_PATH"
# echo "DOCKER-COMPOSE_WORKDIR_SCRIPT_PATH: $DOCKER-COMPOSE_WORKDIR_SCRIPT_PATH"
# echo "GOIN_CONTAINER_SCRIPT_PATH: $GOIN_CONTAINER_SCRIPT_PATH"
# echo "INSTALL_DOCKER_LNMP_SCRIPT_PATH: $INSTALL_DOCKER_LNMP_SCRIPT_PATH"
# echo "SSL_MENU_SCRIPT_PATH: $SSL_MENU_SCRIPT_PATH"
# echo "CENTOS_ACME_SCRIPT_PATH: $CENTOS_ACME_SCRIPT_PATH"
# echo "UBUNTU_ACME_SCRIPT_PATH: $UBUNTU_ACME_SCRIPT_PATH"
# echo "WARP_MENU_SCRIPT_PATH: $WARP_MENU_SCRIPT_PATH"
# echo "WEBSITE_MENU_SCRIPT_PATH: $WEBSITE_MENU_SCRIPT_PATH"
# echo "SSPANEL_MENU_SCRIPT_PATH: $SSPANEL_MENU_SCRIPT_PATH"
# echo "GET_SSPANEL_VERSION_SCRIPT_PATH: $GET_SSPANEL_VERSION_SCRIPT_PATH"
# echo "STEP1_SSL_SCRIPT_PATH: $STEP1_SSL_SCRIPT_PATH"
# echo "STEP2_INSTALL_SSPANEL_SCRIPT_PATH: $STEP2_INSTALL_SSPANEL_SCRIPT_PATH"
# echo "STEP3_NGINX_SCRIPT_PATH: $STEP3_NGINX_SCRIPT_PATH"
# echo "STEP4_INITIALIZATION_SITE_SCRIPT_PATH: $STEP4_INITIALIZATION_SITE_SCRIPT_PATH"
# echo "UPDATE_SSPANEL_SCRIPT_PATH: $UPDATE_SSPANEL_SCRIPT_PATH"
# echo "INSTALL_V2BOARD_SCRIPT_PATH: $INSTALL_V2BOARD_SCRIPT_PATH"
# echo "UPDATA_V2BOARD_SCRIPT_PATH: $UPDATA_V2BOARD_SCRIPT_PATH"
