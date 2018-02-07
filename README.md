# LuaViewDemo-iOS
LuaViewDemo-iOS

https://bloodspasm.github.io/2018/02/06/2018-02-06_LuaView(%E4%B8%80)/
---
title: LuaView学习(一)
date: 2018-02-06 15:08:53
tags:
  - code
  - iOS
  - LuaView
---


> 安装

1. Pods引入（推荐）

	在目标工程Podfile中加入如下命令，可以自动将最新的LuaViewSDK和对应的Lua虚拟机代码同时引入：

		pod 'LuaViewSDK', :git => 'git@gitlab.alibaba-inc.com:luaview/LuaViewSDK.git'

2. 源码引入

	在Github上clone或者下载最新版本源代码：https://github.com/alibaba/LuaViewSDK， 
将LuaViewSDK和Lua虚拟机的源代码拷贝到目标工程中。如下图所示，红色表示的是LuaViewSDK源代码，绿色表示的是Lua虚拟机源代码

![](http://p3azy2pd9.bkt.clouddn.com/2018-02-07-15179848701959.png)

> 运行报错

['system' function is unavailable in iOS 11](https://github.com/alibaba/LuaViewSDK/issues/84)

```
static int os_execute (lua_State *L) {
//  lua_pushinteger(L, system(luaL_optstring(L, 1, NULL)));
    lua_pushnil(L);
  return 1;
}
```








