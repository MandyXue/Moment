# Moment

## Java版本

### 配置
1. intellij idea中打开项目，并等待安装dependencies
2. 安装好后build即可

### 数据库
1. 数据库使用leancloud作为后端支持
2. 使用leancloud RESTful API进行数据交互
3. 数据库文档详情见[Wiki](https://github.com/MandyXue/Moment/wiki)


## NodeJS版本

### 配置

1. 安装NodeJS，推荐使用v5.11.0版本
2. 全局安装nodemon

	```bash
	$ npm install -g nodemon
	```

3. 使用npm安装依赖包

	```bash
	$ npm install
	```

4. 启动项目

	```bash
	$ nodemon
	```
	服务器URL：http://localhost:3000/

**注意**：不要将config.js中的appid和appkey提交上去，如果本地无法忽略的话执行以下命令：（忽略已提交文件的改动）

```bash
$ cd Moment
$ git update-index --assume-unchanged moment_node_version/config.js 
```

取消忽略的指令如下：

```bash
$ git update-index --no-assume-unchanged moment_node_version/config.js
``` 

====
Copyright &copy; Moment 2016
