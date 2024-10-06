 #!/bin/bash
 files=$(ls -a $1 | grep -E '.[^.]+' |grep -v .git)
 # 去掉 ls -a 返回结果中的 ". .. .git"
 for file in `echo $files`; do
     ln -s $1/$file ~/$file # 创建软链接
 done

 ~ $ source autoconfig.sh 
 # 执行脚本，为dotfiles中的配置文件创建在主目录 ~ 下的软链接
