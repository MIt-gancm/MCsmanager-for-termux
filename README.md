# MCsmanager-for-termux
Install MCsmanager for termux
这里要用到两个项目 1.termux(国区优先考虑Zerotermux)
                2.MCsmanager
利用本脚本快速安装MCsmanager到受termux(Zerotermux)支持的安卓手机上)
# 1.准备
先去<a href="https://github.com/termux/termux-app#github">
    <button>下载termux</button>
</a>
下载并安装termux
『<a href="https://github.com/hanxinhao000/ZeroTermux">
    <button>下载Zerotermux</button>
  </a>
  下载并安装Zerotermux                                   』
# 2.git项目
```
git clone https://github.com/MIt-gancm/MCsmanager-for-termux.git
```
# 3.安装
```
chmod 777 ./MCsmanager-for-termux/Install.sh && bash ./MCsmanager-for-termux/Install.sh
```
# 注意！
没有proot屁乌班图20.04一定要在第2个弹窗选『我没有安装proot ubuntu』
这里会安装TRSS Script（时雨🌌星空）大佬的作品
安装完成后依次选择proot  乌班图   20.04 启动容器 等待安装完成
```
 mv ./MCsmanager-for-termux/Install.sh /data/data/com.termux/files/home/.local/share/tmoe-linux/containers/proot/ubuntu-focal_arm64/root/
```
移动脚本到proot镜像/root目录
登录proot镜像
再次运行脚本一路回车就行了
# 启动
termux(Zerotermux)的自身原因安装完成后的启动指令无效或报错所以要手动启动面板
```
# 打开两个终端或两个 Screen 软件的终端窗口
# 先启动守护进程
cd /opt/mcsmanager/daemon
# 启动
node app.js

# 然后启动面板端进程
cd /opt/mcsmanager/web
# 启动
node app.js

# 访问 http://localhost:23333/ 即可进入面板。
# 默认情况下，面板端会自动扫描 daemon 文件夹并且自动连接到守护进程。
```
# 完成 想用面板吧
