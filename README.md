# Gamux-Client
Gamux.org的桌面客户端软件
![image](https://github.com/Gamuxorg/Gamux-Client/blob/master/screenshot.png)
## 软件架构
本软件使用GitHub Electron作为客户端基本引擎，页面渲染部分调用php做后端生成的网页，在网页内容中，使用shell和php生成了服务器的部分游戏数据、gamux.org网站资源及Steam api共同作为数据来源。
## 开发进度
本软件为自由软件，因此任何有兴趣的朋友可以加入共同开发，目前php端内容完成度较高，gamux.org网站资源尚需丰富，而steam api的研究刚刚开始。
同时electron的编写才刚刚进入试水阶段，由于没有桌面开发经验，难免写的丑陋，请勿见怪。
## 困难及目标
目前的v0.1.0只是用来证明用网页技术开发桌面软件的可行性，并无任何实用价值。因此需要在如下等方面继续努力：
### 1、与gamux.org交互
  加载wordpress的restful API数据。因此所有后端代码依赖于wordpress输出。
### 2、steam web api
  对steam web api文档的研究也只是初步接触，steam的api太庞大，且并没有较好的中文用户的介绍，因此比较缓慢。一定会支持一键购买正版游戏，并希望除了steam，也能支持desura、gog、humble store等网站的游戏购买。并会支持steam账号登陆及查看自己对该游戏的数据分析。
### 3、electron开发
  由于没有桌面开发经验，因此头一次写难免恐慌，对如何与系统交互等相关事宜还需多学习，多交流。目前还不支持游戏的下载、安装、更新和卸载等功能，但后续一定会支持。
## 联系作者
添加微信shouhuanxiaoji为好友
## License
GPLv3协议
