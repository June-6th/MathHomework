# MathHomework

此仓库用来存放数学作业, 文件格式为 tex, 使用 xelatex 编译.
作业的层级为: 课程 -> 作业 -> 题目, 对应的 latex 章节层级为: chapter -> section -> subsection.
`main.tex` 文件汇总所有课程的作业, `<course_name>.tex` 文件汇总课程 `<course_name>` 的所有作业,
`<course_name>` 目录下实际存放该课程的所有作业, 每次作业一个文件.
编译对应的文件即可得到对应的文档 (格式为 pdf 格式), 例如,
编译 `main.tex` 文件可得到所有课程作业的文档,
编译 `泛函分析.tex` 文件可得到泛函分析所有作业的文档,
编译 `泛函分析/h8.tex` 文件可得到泛函分析第 8 次作业的文档.

## 添加新课程或新作业

下以添加课程 `泛函分析` 及其第 8 次作业为例. 假设 `main.tex` 内容如下:

```tex
\documentclass{ctexrep}
% 导言区
\usepackage{subfiles}
\begin{document}

\end{document}
```

添加课程 `泛函分析` 只需在 `main.tex` 的正文中添加子文件和 chapter:

```tex
\documentclass{ctexrep}
% 导言区
\usepackage{subfiles}
\begin{document}

% 课程
\chapter{泛函分析}
\subfile{泛函分析.tex}

\end{document}
```

并在项目根目录下创建对应的课程文件 `泛函分析.tex`, 其内容如下:

```tex
\documentclass[main.tex]{subfiles}
\begin{document}

\end{document}
```

添加课程 `泛函分析` 的第 8 次作业只需在 `泛函分析.tex` 的正文中添加子文件和 section:

```tex
\documentclass[main.tex]{subfiles}
\begin{document}

% 作业
\section{作业 8}
\subfile{泛函分析/h8.tex}

\end{document}
```

并创建 `泛函分析/h8.tex` 文件, 其内容如下:

```tex
\documentclass[../main.tex]{subfiles}
\begin{document}

% 正文

\end{document}
```

## License

本项目文档使用
[cc-by-sa-4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
许可证进行许可.
