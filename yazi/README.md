# Yazi

Yazi 是一个功能强大的文件管理器，具有高度可定制的快捷键系统，旨在通过键盘快捷键实现高效的导航和文件操作。

## 安装

要安装 Yazi 及其依赖项，请运行以下命令：

```shell
brew install yazi ffmpegthumbnailer unar jq mpv poppler fd ripgrep fzf zoxide font-symbols-only-nerd-font
```

## Shell 包装器

对于 Zsh/Bash，您可以创建一个函数来简化启动 Yazi：

```shell
function yy() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

export PATH="/opt/homebrew/opt/file-formula/bin:$PATH"
eval "$(zoxide init zsh)"
```

## 快捷键

### 基本操作

| 快捷键              | 动作                 |
|------------------|--------------------|
| <kbd>q</kbd>     | 退出进程               |
| <kbd>Q</kbd>     | 退出进程（不写入 cwd 文件）   |
| <kbd><C-q></kbd> | 关闭当前标签页，如果是最后一个则退出 |
| <kbd><C-z></kbd> | 挂起进程               |
| <kbd>~</kbd>     | 打开帮助               |

### 导航

| 快捷键                      | 动作             |
|--------------------------|----------------|
| <kbd>h</kbd>             | 返回上级目录         |
| <kbd>j</kbd>             | 向下移动光标         |
| <kbd>k</kbd>             | 向上移动光标         |
| <kbd>l</kbd>             | 进入选中的目录        |
| <kbd><C-u></kbd>         | 向上移动半页         |
| <kbd><C-d></kbd>         | 向下移动半页         |
| <kbd>g</kbd><kbd>g</kbd> | 移动到顶部          |
| <kbd>G</kbd>             | 移动到底部          |
| <kbd><Up></kbd>          | 在预览中向上查看 1 个单位 |
| <kbd><Down></kbd>        | 在预览中向下查看 1 个单位 |
| <kbd><S-Up></kbd>        | 在预览中向上查看 5 个单位 |
| <kbd><S-Down></kbd>      | 在预览中向下查看 5 个单位 |

### 选择

| 快捷键              | 动作           |
|------------------|--------------|
| <kbd>Space</kbd> | 切换当前选择状态     |
| <kbd>v</kbd>     | 进入可视模式（选择模式） |
| <kbd>V</kbd>     | 进入可视模式（取消模式） |
| <kbd><C-a></kbd> | 选择所有文件       |
| <kbd><C-r></kbd> | 反转所有文件的选择    |

### 文件操作

| 快捷键                             | 动作                 |
|---------------------------------|--------------------|
| <kbd>o</kbd> 或 <kbd>Enter</kbd> | 打开选中的文件            |
| <kbd>O</kbd>                    | 交互式打开选中的文件         |
| <kbd>y</kbd>                    | 复制选中的文件            |
| <kbd>x</kbd>                    | 剪切选中的文件            |
| <kbd>p</kbd>                    | 粘贴文件               |
| <kbd>P</kbd>                    | 粘贴文件（如果目标存在则覆盖）    |
| <kbd>d</kbd>                    | 永久删除文件             |
| <kbd>D</kbd>                    | 将文件移到回收站           |
| <kbd>a</kbd>                    | 创建文件或目录            |
| <kbd>r</kbd>                    | 重命名文件或目录           |
| <kbd>-</kbd>                    | 创建到复制文件的符号链接（绝对路径） |
| <kbd>_</kbd>                    | 创建到复制文件的符号链接（相对路径） |
| <kbd>B</kbd>                    | 创建备份               |

### 命令和搜索

| 快捷键              | 动作                 |
|------------------|--------------------|
| <kbd>:</kbd>     | 运行 shell 命令（阻塞 UI） |
| <kbd>;</kbd>     | 运行 shell 命令        |
| <kbd><C-s></kbd> | 打开 shell           |
| <kbd>s</kbd>     | 使用 fd 按名称搜索文件      |
| <kbd>S</kbd>     | 使用 ripgrep 按内容搜索文件 |
| <kbd><C-s></kbd> | 取消正在进行的搜索          |
| <kbd>/</kbd>     | 智能查找               |
| <kbd>?</kbd>     | 智能向前查找             |
| <kbd>n</kbd>     | 查找下一个              |
| <kbd>N</kbd>     | 查找上一个              |

### 文件信息和复制

| 快捷键                      | 动作          |
|--------------------------|-------------|
| <kbd>c</kbd><kbd>c</kbd> | 复制绝对路径      |
| <kbd>c</kbd><kbd>d</kbd> | 复制父目录路径     |
| <kbd>c</kbd><kbd>f</kbd> | 复制文件名       |
| <kbd>c</kbd><kbd>n</kbd> | 复制不带扩展名的文件名 |

### 排序和过滤

| 快捷键                      | 动作         |
|--------------------------|------------|
| <kbd>.</kbd>             | 切换隐藏文件的可见性 |
| <kbd>f</kbd>             | 智能过滤       |
| <kbd>,</kbd><kbd>m</kbd> | 按修改时间排序    |
| <kbd>,</kbd><kbd>M</kbd> | 按修改时间逆序排序  |
| <kbd>,</kbd><kbd>c</kbd> | 按创建时间排序    |
| <kbd>,</kbd><kbd>C</kbd> | 按创建时间逆序排序  |
| <kbd>,</kbd><kbd>e</kbd> | 按扩展名排序     |
| <kbd>,</kbd><kbd>E</kbd> | 按扩展名逆序排序   |
| <kbd>,</kbd><kbd>a</kbd> | 按字母顺序排序    |
| <kbd>,</kbd><kbd>A</kbd> | 按字母顺序逆序排序  |
| <kbd>,</kbd><kbd>n</kbd> | 按自然顺序排序    |
| <kbd>,</kbd><kbd>N</kbd> | 按自然顺序逆序排序  |
| <kbd>,</kbd><kbd>s</kbd> | 按大小排序      |
| <kbd>,</kbd><kbd>S</kbd> | 按大小逆序排序    |

### 标签页操作

| 快捷键                       | 动作           |
|---------------------------|--------------|
| <kbd>t</kbd>              | 使用当前路径创建新标签页 |
| <kbd>1</kbd>-<kbd>9</kbd> | 切换到指定编号的标签页  |
| <kbd>[</kbd>              | 切换到上一个标签页    |
| <kbd>]</kbd>              | 切换到下一个标签页    |
| <kbd>{</kbd>              | 将当前标签页与上一个交换 |
| <kbd>}</kbd>              | 将当前标签页与下一个交换 |

### 任务管理

| 快捷键          | 动作      |
|--------------|---------|
| <kbd>w</kbd> | 显示任务管理器 |

### 插件快捷键

| 快捷键                       | 动作                 |
|---------------------------|--------------------|
| <kbd>i</kbd>              | Keyjump（普通模式）      |
| <kbd>I</kbd>              | Keyjump（保持模式）      |
| <kbd>m</kbd>              | 保存当前位置为书签          |
| <kbd>'</kbd>              | 跳转到书签              |
| <kbd>b</kbd><kbd>d</kbd>  | 删除书签               |
| <kbd>b</kbd><kbd>D</kbd>  | 删除所有书签             |
| <kbd>L</kbd>              | 智能进入（跳过只有单个子目录的目录） |
| <kbd>H</kbd>              | 智能返回               |
| <kbd>z</kbd><kbd>z</kbd>  | 使用 zoxide 跳转到目录    |
| <kbd>z</kbd><kbd>f</kbd>  | 使用 fzf 跳转到文件       |
| <kbd>z</kbd><kbd>g</kbd>  | 按内容跳转到文件           |
| <kbd>c</kbd><kbd>m</kbd>  | 对选中文件执行 chmod      |
| <kbd>F</kbd>              | 智能过滤               |
| <kbd>1</kbd>-<kbd>9</kbd> | 相对步骤移动             |

### 特殊目录跳转

| 快捷键                            | 动作       |
|--------------------------------|----------|
| <kbd>g</kbd><kbd>h</kbd>       | 跳转到主目录   |
| <kbd>g</kbd><kbd>c</kbd>       | 跳转到配置目录  |
| <kbd>g</kbd><kbd>d</kbd>       | 跳转到下载目录  |
| <kbd>g</kbd><kbd>t</kbd>       | 跳转到临时目录  |
| <kbd>g</kbd><kbd><Space></kbd> | 交互式跳转到目录 |

## 注意事项

- 使用 <kbd>Esc</kbd> 可以退出可视模式、清除选择或取消搜索。
- 在任务管理器中，使用 <kbd>x</kbd> 可以取消任务。
- 使用 <kbd>m</kbd><kbd>s</kbd>、<kbd>m</kbd><kbd>p</kbd>、<kbd>m</kbd><kbd>t</kbd>、<kbd>m</kbd><kbd>m</kbd>
  可以切换不同的行模式（大小、权限、修改时间、无）。

更多详细信息和自定义选项，请参考 Yazi 的官方文档。
