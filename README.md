# docker-fis-pure
fis-pure的docker镜像。因为环境问题，在阿里云上，fis-parser-node-sass能够安装成功，但运行一直出错，于是用docker弄个镜像来规避这个问题。

## 使用说明

1. 安装docker环境(略)
2. 安装镜像
2. 启动容器
3. 执行构建

## 安装镜像

```
docker pull chyingp/docker-fis-pure 
```


## 启动容器

```
docker run -i -t -v /data/code/website/:/data/code/website/ chyingp/docker-fis-pure /bin/bash
```

稍微讲解下上面命令

* `docker run -i -t`：以交互输入的方式启动容器，配合后面的`/bin/bash`。
* `-v`：将宿主环境的目录、容器的目录进行映射，这里宿主环境、容器的目录都是`/data/code/website/`。

## 执行构建

执行下面命令，完成构建。

```
cd /data/code/website/
pure release -d ./output
```