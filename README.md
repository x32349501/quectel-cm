# 移远拨号程序

## 存放目录
> package/network/utils/quectel-cm

```shell
$ cd $(TOPDIR)/package/network/utils/
$ git clone https://github.com/x32349501/quectel-cm.git
```

## 编译
_返回到$(TOPDIR)根目录编译_
```shell
$ make package/quectel-cm V=s
```
这条命令仅仅是编译这一个软件包，所以用时会比较短。如果编译过程中没有错误，进入目录$(TOPDIR)/bin/ramips/packages下可以看到软件包
```shell
$ make package/quectel-cm/clean V=s
```
清除编译文件

如果你想吧软件包编译进固件里还是需要用：
```shell
$ make V=s
```
此时直接在系统中运行
```shell
$ quectel-CM
```
