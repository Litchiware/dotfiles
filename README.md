#我的vimrc文件

文件包含以下几个部分的配置语句

##manage vim plugins with vundle

这部分主要包括了vim插件相关的语句，我是使用vundle来进行vim插件的安装和管理的

##settings for specific plugins

这一部分主要是针对某些特定插件的配置

###vim-snippets

由于我使用`vim-snippets`的同时也安装了`vim-markdown`插件，而`vim-markdown`插件中的`ftdetect/mkd.vim`文件中将markdown文件的filetype设置为了`mkd`，因此`vim-snippets`插件中定义的markdown的snippet无法正常使用，有两种解决方案

- 重新将markdown文件的filetype设置为markdown，即在vimrc中增加一句`au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=markdown`
- 将vim-snippets插件的`markdown.snippets`文件重新命名为`mkd.snippets`
- 最新版的vim-snippets插件貌似不用重命名`markdown.snippets`文件了，因为新版的`vim-markdown`插件中的`ftdetect/mkd.vim`文件中将markdown文件的filetype设置为了`mkd.markdown`

第一种方法会导致vim-markdown的很多功能无法正常使用，比如增强的markdown语法高亮，第二种方法可移植性不好，在另一个平台上安装了这两种插件后，需要进行`markdown.snippets`文件的重命名工作，为了使用vim-markdown插件的功能，本人采用了第二种解决方式

另外，我经常用markdown写jekyll博客，因此我在`mdk.snippets`文件中新增了如下内容：

    snippet jekyll
        ---
        layout: post
        tagline: "${1:description}"
        category: ${2:category}
        tags: [${3:tag}]
        ---
        {% include JB/setup %}

        ${0}

##settings for appearance

这一部分主要是与vim的外观显示相关的配置

##settings for property

这一部分主要是vim的许多内置属性的配置

##settings for key mappings

这一部分主要是一些常用的按键映射

##settings for built-in plugins

这一部分主要是与vim中内置的插件相关的配置
