#  组件化开发

###  新建CocoaTouch Framework

###  配置Pod Spec,PodFile

### 设置Framework为静态库

###  主工程Pod 里面加入该target工程

###  主工程执行pod update

###  选择Framework 拖到主工程的Link Binary With Library

###  开始开发Framework


### 开发完成之后新建target aggregate,用来构建同时支持模拟器和真机的Framework

### 开发完成之后新建target Bundle,用来放置资源文件如图片，xib,storyboard等，构建同时支持模拟器和真机Framework

### Tips:

####  模块内所包含的图片资源和xib,storyboard等都且只能放在bundle内，framework中不应该包含以上的所有资源
####  防止资源重复添加
####  设置允许Allow Non-modular Includes in Framework Modules为YES
#### 设置静态变量共享在FrameWork内部的全局字符串，静态变量的使用范围在定义她的源文件内有效


## GIT Config 多配置
###   git clone git@Wither:WithershinsMe/UIDemoLib.git

Host Wither 
   HostName github.com
   User git
   IdentityFile ~/.ssh/wither

###
