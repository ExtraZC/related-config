# vscode-workspace-config

This is a user config of vscode.

**global**中的设置为全局设置文件, **remote**中的设置为远程用户设置.

* `global/setting.json`配置文件包括以下插件的设置:

  > Atom One Dark Theme **Vscode的Atom黑暗主题, 推荐**
  >
  > Better Align **代码对齐插件**
  >
  > Better Comments **代码注释高亮**
  >
  > Bracket Pair Colorizer 2 **代码括号高亮**
  >
  > Chinese (Simplified) Lanuage **vscode界面汉化包**
  >
  > Code Runner **一键运行**
  >
  > GitLens-Git supercharged **增强vscode的git功能插件**
  >
  > indent-rainbow **高亮缩进**
  >
  > Lammps Syntax Highlighting **lammps语法高亮**
  >
  > Latex Workshop **LaTeX编译环境插件**
  >
  > LTex **vscode latex语言检查插件**
  >
  > Path Autocomplete **路径自动补全插件**
  >
  > Prettier-Code formatter **代码格式化**
  >
  > Project Manager **文件夹管理**
  >
  > Setting Sync **同步设置**
  >
  > TODO Highlight **TODO高亮**
  >
  > Todo Tree **TODO树**
  >
  > Vim **VIm编辑**
  >
  > Visual Studio IntelliCode **智能代码提示**
  >
  > Vscode-icons **vscode图标**
  >
  > C/C++ **C/C++包**
  >
  > ASM Code Lens **汇编语言扩展**
  >
  > TabNine **AI语法智能提示**
  >
  > Shell launcher **Shell配置扩展**
  >
  > Remote Development **远程开发扩展**
  >
  > Keil Assistant **Keil扩展**

* `remote/ssh/setting.json`是远程ssh连接的用户设置. *注意: 全局插件和局部插件的设置冲突问题.*

* `.code-workspace`后缀名文件为vscode的工作区文件:

  > latex.code-workspace -> latex工作区文件
  >
  > lammps.code-workspace -> lammps工作区文件
  >
  > ccpp.code-workspace -> C/C++工作区文件(包括嵌入式相关设置)
  >
  > java.code-workspace -> java工作区文件
  >
  > python.code-workspace -> python工作区文件

## Better align配置

* 设置快捷键: `Ctrl+Shift+P`打开命令执行窗口, 并搜索`keyboard json`, 打开键盘快捷方式, 出现如下图界面:

  ![vscode_extension_1](https://cheve.wiidu.net/images/2020/07/12/f8c90532c4bcbbdcb2b311a708f56ea9.png)

* 在里面输入如上图中的命令:

  ```json
  {
  	"key": "ctrl+alt+oem_plus"
      "command": "wwm.aligncode",
      "when": "editorTextFocus && !editorReadonly"
  }
  ```

## Better Comments:

* 代码注释高亮在`settings.json`中添加如下命令:

  ```json
  "better-comments.tags":[
      {
          "tag": "!"
          "color": "#000000"
          "strikethrough": false,
          "backgroundColor": "transparent"
      }
  ]
  ```

  **Note: 标签tag可以设置为其他样式的注释**

## Bracket Pair Colorizer 2

* 在`settings.json`的设置如下:

  ```json
  "bracket-pair-colorizer-2.forceUniqueOpeningColor": true,
  "bracket-pair-colorizer-2.forceIterationColorCycle": true,
  "bracket-pair-colorizer-2.highlightActiveScope": false,
  "bracket-pair-colorizer-2.activeScopeCSS": [
    "borderStyle : solid",
    "borderWidth : 1px",
    "borderColor : {color}",
    "opacity: 0.5"
  ],
  "bracket-pair-colorizer-2.showBracketsInGutter": true,
  "bracket-pair-colorizer-2.showHorizontalScopeLine": true,
  ```

## Code Runner

* 快捷键运行`Ctrl+Alt+N`, 停止`Ctrl+Alt+M`.  在`settings.json`中的设置如下:

  ```json
  "code-runner.executorMap": {
    "javascript": "node",
    "java": "cd $dir && javac $fileName && java $fileNameWithoutExt",
    "c": "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
    "cpp": "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt"
  }
  ```

  **Note: 这里只列出几种语言类型的运行逻辑, 具体的情况可以查看settings.json文件**

  ```json
  "code-runner.runInTerminal": false,
  "code-runner.ignoreSelection": true,
  "code-runner.clearPreviousOutput": true,
  "code-runner.saveAllFilesBeforeRun": true,
  "code-runner.saveFileBeforeRun": true
  ```

## LaTeX Workshop

* 该编译环境的设置已集中于工作区文件`latex.vscode-workspace`.

## ~~Path Intellisense~~

* 在`settings.json`中的设置如下:

  ```json
  "path-intellisense.extensionOnImport": true,
  "path-intellisense.autoSlashAfterDirectory": true
  ```

## Path Autocomplete

* 路径自动补全, 相较于上一个体验更好, 在`settings.json`中的设置如下:

  ```json
  "projectManager.git.baseFolders": [
      "D:\\Users\\Git"
  ],
  "projectManager.any.baseFolders": [
      "D:\\Users"
  ],
  "projectManager.any.ignoredFolders": [
      "node_modules",
      "out",
      "typings",
      "test",
      ".git",
      ".idea",
      ".vscode"
  ],
  "projectManager.any.maxDepthRecursion": 1
  ```

## Setting Sync

* 用于上传Vscode的用户配置以及相关插件, 具体配置可以百度/谷歌.

## TODO Highlight

* 高亮TODO列表, 设置如下:

  ```json
  "todohighlight.isEnable": true,
  "todohighlight.include": [
      "**/*.js",
      "**/*.jsx",
      "**/*.ts",
      "**/*.tsx",
      "**/*.html",
      "**/*.php",
      "**/*.css",
      "**/*.scss",
      "**/*.tex"
  ],
  "TODO": {
     "background": "yellow",
     "rulerColour": "yellow",
     "iconColour": "yellow"
  },
  "todohighlight.keywords": [
    {
        "text": "DONE:",
        "color": "#4BB5C1",
        "backgroundColor": "#B0CC99",
        "overviewRulerColor": "#B0CC99"
    }
  ]
  ```

## TODO Tree

* 相关设置如下:

  ```json
  "todo-tree.tree.showScanModeButton": false,
  "todo-tree.general.tags": [
      "DONE",
      "TODO",
      "HACK",
      "FIXME",
      "BUG"
  ],
  "todo-tree.highlights.defaultHighlight": {
      "foreground": "white",
      "background": "yellow",
      "icon": "check",
      "rulerColour": "yellow",
      "type": "tag",
      "iconColour": "yellow"
  },
  "todo-tree.highlights.customHighlight": {
      "FIXME": {
        "icon": "beaker",
        "rulerColour": "red",
        "iconColour": "red",
        "background": "red"
      },
      "TODO": {
        "background": "yellow",
        "rulerColour": "yellow",
        "iconColour": "yellow"
      },
      "BUG": {
        "icon": "bug"
      },
      "DONE": {
        "background": "green",
        "icon": "issue-closed",
        "rulerColour": "green",
        "iconColour": "green"
      }
  },
  "todo-tree.highlights.enabled": false,
  "todo-tree.regex.regex": "((%|//|#|<!--|;|/\\*|^)\\s*($TAGS)|^\\s*- \\[ \\])"
  ```

## Vim编辑

* Vim编辑器, 设置如下:

  ```shell
  "vim.autoSwitchInputMethod.enable": true,
  "vim.autoSwitchInputMethod.defaultIM": "1033",
  "vim.autoSwitchInputMethod.obtainIMCmd": "D:\\Users\\bin\\im-select.exe", //这里涉及到vscode在vim编辑模式下的中英文转换, 使用这个im-select可以比较有效的解决.
  "vim.autoSwitchInputMethod.switchIMCmd": "D:\\Users\\bin\\im-select.exe {im}",
  "vim.easymotion": true,
  "vim.useSystemClipboard": true,
  ```


## C/C++

- 相关配置文件: `c_cpp_properties.json`, `launch.json`和`tasks.json`, 都在**ccpp**文件夹中.

## TabNine

- `Ctrl+Shift+P`后输入`TabNine:Open Settings`, 输入**API Key**, 该Key需要去TabNine官网申请.

## Shell Launcher

- 详细设置可以看``settings.json`.