# 大连理工大学图书馆自动预约座位小程序

框架来自于[ShuaichiLi/DLUT-library-auto-reservation](https://github.com/ShuaichiLi/DLUT-library-auto-reservation)

## 特性
- 自动化
  - 自动化取消了弹窗，以防止程序在弹窗后等待点击而持续运行
- 临时使用
  - 如果预约成功，程序会弹窗提示“预约xxx成功”
  - 如果失败，则无弹窗

## 做出的修改
- 去掉了页面的滑动，当前可以精确定位一个座位（代码量直接大幅下降doge）

## 依赖项
- 直接运行源程序请完整安装下述依赖包
  - [Chromedriver](https://chromedriver.chromium.org/downloads) 记得下载对应版本，解压到```/driver```文件夹里
  - [Python](https://www.python.org/downloads/) 
  - selenium （推荐使用[pip](https://pip.pypa.io/en/stable/installation/)）
    - ```pip install -U selenium``` (For Linux)
    - ```py -m pip install -U selenium``` (For Windows)
  - 不下依赖包用个der啊
- 如果使用打包后版本，请确认Chromedriver与电脑上的Chrome版本相对应
  - 编译进安装包内的Chromedriver对应Chrome99，如版本不同请到[此处](https://chromedriver.chromium.org/downloads)自行下载对应版本
  - 或者下载最新版[Chrome](https://www.google.cn/chrome)


## 使用
- 直接运行源程序
  - 临时使用（输入各项数据）
    - ```py main_input.py``` 或者直接运行```run.bat```
  - 自动化
    - 通过修改程序根目录的```config.txt```和```seats.txt```中的数据来实现自动化配置变更
    - 两个文档中现有的数据均为示例
    - **请注意，请勿删除两个txt文档顶部的注释**
- 运行打包后的程序
  - 在[Releases](https://github.com/qhy040404/DLUT-library-auto-reservation/releases)中下载最新版安装使用即可
  - 编译后的自动化版本程序没有命令行界面，只有在预约成功会有对话框
  - 编译后的临时使用版本有命令行界面，用来输入数据
  - **请注意下载版本，```auto```是自动化版本，```input```是临时使用版本**