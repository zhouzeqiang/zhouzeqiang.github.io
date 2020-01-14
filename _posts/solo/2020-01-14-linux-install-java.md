---
layout: post
title:  Linux上Java的安装与配置
no-post-nav: true
category: java
tags: [java]
excerpt: Linux上Java的安装与配置
keywords: other
---
由于使用 yum 或者 apt-get 命令 安装 openjdk 可能存在类库不全，从而导致用户在安装后运行相关工具时可能报错的问题，所以此处我们推荐采用手动解压安装的方式来安装 JDK。具体步骤如下：

**1.下载 JDK**

进入 Oracle 官方网站 下载合适的 JDK 版本，准备安装。
注意：这里需要下载 Linux 版本。这里以jdk-8u151-linux-x64.tar.gz为例，你下载的文件可能不是这个版本，这没关系，只要后缀(.tar.gz)一致即可。

**2. 创建目录**

在/usr/目录下创建java目录，

```
mkdir /usr/java
cd /usr/java
```

把下载的文件 jdk-8u151-linux-x64.tar.gz 放在/usr/java/目录下。

**3. 解压 JDK**
```
tar -zxvf jdk-8u151-linux-x64.tar.gz
```

**4. 设置环境变量**

修改 /etc/profile
在 profile 文件中添加如下内容并保存：

```
set java environment
JAVA_HOME=/usr/java/jdk1.8.0_151        
JRE_HOME=/usr/java/jdk1.8.0_151/jre     
CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
export JAVA_HOME JRE_HOME CLASS_PATH PATH
注意：其中 JAVA_HOME， JRE_HOME 请根据自己的实际安装路径及 JDK 版本配置。

让修改生效：

source /etc/profile

```

**5. 测试**

```
java -version

```

显示 java 版本信息，则说明 JDK 安装成功：
```
java version "1.8.0_151"
Java(TM) SE Runtime Environment (build 1.8.0_151-b12)
Java HotSpot(TM) 64-Bit Server VM (build 25.151-b12, mixed mode)
```