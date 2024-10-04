#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20240629.sql ./mysql/db
cp ../sql/ry_config_20240902.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../zimu-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy zimu-gateway "
cp ../zimu-gateway/target/zimu-gateway.jar ./ruoyi/gateway/jar

echo "begin copy zimu-auth "
cp ../zimu-auth/target/zimu-auth.jar ./ruoyi/auth/jar

echo "begin copy zimu-visual "
cp ../zimu-visual/zimu-monitor/target/zimu-visual-monitor.jar  ./ruoyi/visual/monitor/jar

echo "begin copy zimu-modules-system "
cp ../zimu-modules/zimu-system/target/zimu-modules-system.jar ./ruoyi/modules/system/jar

echo "begin copy zimu-modules-file "
cp ../zimu-modules/zimu-file/target/zimu-modules-file.jar ./ruoyi/modules/file/jar

echo "begin copy zimu-modules-job "
cp ../zimu-modules/zimu-job/target/zimu-modules-job.jar ./ruoyi/modules/job/jar

echo "begin copy zimu-modules-gen "
cp ../zimu-modules/zimu-gen/target/zimu-modules-gen.jar ./ruoyi/modules/gen/jar

