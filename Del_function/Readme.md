# linux 中禁用rm 教程  
* 这个小tools的优点在于不需要依赖任何插件或者是第三方库，简单，上手快，可拓展性强。  

其主要原理就是通过修改 rc 文件中的hot_key 来实现shell脚本的调用。  
我们所需要维护的仅仅是实现功能的shell脚本。  

## Step.1  
在根目录下新建`.trash` 文件夹当作回收站,当然也可以选择其他文件夹。  
```
$ mkdir ~/.trash
```
## Step.2  
新建~/tools文档，用于存放shell 脚本  
```
$ mkdir ~/tools
$ mv ./remove.sh  ./recover.sh   ~/tools
```
## Step.3 
修改rc（使用那个shell 就用修改哪个rc 文件`~/.bashrc`  or   `~/.zshrc`）中的hot_key,  
在最后添加如下代码。  
```
alias del='/bin/bash   ~/tools/remove.sh'       #设定del 为运行remove.sh
alias recv='/bin/bash   ~/tools/recover.sh'     #设定recv 为运行recover.sh
alias rm='echo Dont use rm!!!!!'                #  禁用rm
alias cleartrash='/bin/rm -rf ~/.trash/*'       #  清理回收站
alias rmhard='/bin/rm  -rf'                     #  强行使用rm
```
**The last  step** ,重启shell会话窗口，refresh  rc的修改。
