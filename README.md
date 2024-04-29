# Wordpress Docker with Apache and Sqlite
## 食用 Eat
```
# 数据将在容器删除后完全、彻底、不可挽回地丢失 (Data will all be LOST after container deleted)
docker run -it -d --name wp -p 80:80 littleplus/wordpress:6.4-apache-sqlite
```


## 注意事项 Attention
* Wordpress版本不可升级至6.5 (Could not upgrade wordpress version to v6.5)
* 数据库文件存放在 /var/www/html/wp-content/database/.ht.sqlite (Data stores in /var/www/html/wp-content/database/.ht.sqlite)
* 请使用 build.sh 制作镜像 (Please use build.sh script to build image)
* **其他需要持久化的修改请参考官方容器介绍，主要供测试和临时使用，注意备份** 
**(Please persist the other changes as official wordpress docker, mainly for TEST or TEMP use, remember to backup)**


## 依赖项(通过脚本添加至镜像内) Dependency(already added to docker)

**Aaemnnosttv's wp-sqlite-db v1.3.1:** 
[https://github.com/aaemnnosttv/wp-sqlite-db/blob/master/src/db.php](https://github.com/aaemnnosttv/wp-sqlite-db/blob/master/src/db.php)


## 制作镜像
```
bash build.sh
```


## Q & A
如有疑问，请开issue (If there is problem, please create an issue)