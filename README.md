# Internship-Report

Tex template for SPEIT engineer internship report. 巴黎高科学院工程师实习报告LaTeX模板。

Pull requests are appreciated. Feel free to tell me that you can't wait to be one collaborator!

## Project structure

```bash
├── internship.tex (entry)  
├── tex  
│   ├── id.tex (cover info, keywords, etc.)  
│   ├── abstract.tex  
│   ├── intro.tex (introduction)  
│   ├── app_*.tex (appendix)  
│   ├── *.tex (body chapters)  
├── bib  
│   ├── *.bib (bibliography)  
├── figure  
│   ├── *.pdf/png/jpg/eps (figures)  
├───#######################################  
├───#######################################  
├── 官方word模板.docx  
├── sjtuthesis.cfg  
├── sjtuthesis.cls  
├── .latexmkrc  
├── Makefile  
├── README.md  
```

:warning: Do not need to touch the files below, unless you decide to change layout or style of this template.

## How to use online

Please clone the following template on Overleaf:

[![Overleaf](https://img.shields.io/badge/overleaf-SPEIT%20Internship%20Report-brightgreen)](https://www.overleaf.com/latex/templates/speit-internship-report/qtdxjrxcpbrx)

then enjoy it anywhere :blush:

## How to use locally

### Preparation

Download source files on your laptop. Utilities recommended for writing locally on WINDOWS are as followings:
- [texlive](http://mirror.hust.edu.cn/CTAN/systems/texlive/tlnet/)
- [TexStudio](https://www.texstudio.org) or [LaTeX extension in VS Code](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
- [font](https://pan.baidu.com/s/1kV68haJ)(optional)
- [Windows shell](https://babun.github.io/)(optional)

### Usage

#### No IDE, shell only

- **make**: compile and generate `internship.pdf`
- **make pvc**(recommended): continually compile and update target whenever src files change
- **make clean**: clean up auxiliary files
- **make debug**: error debug

:warning: Do NOT and Do NOT Need to call `make pvc` followed by another `make`!  

You may also pass by a whole `latexmk` command of your choice:  

`latexmk -xelatex -silent internship`


#### TexStudio

For example, fill in (*Options* --> *Configure* --> *Commands* --> *latexmk*) with appropriate arguments:  

`latexmk.exe -xelatex -gg -silent -synctex=1 -interaction=nonstopmode %.tex`


#### VS Code + Latex Workshop extension

For example, here is my setting file of Latex Workshop:

```json
{
  "latex-workshop.latex.recipes":[
    {
      "name": "latexmk 🔃",
      "tools": [
        "latexmk"
      ]
    }
  ],
  "latex-workshop.latex.tools":[
    {
      "name": "latexmk",
      "command": "latexmk",
      "args": [
        "-xelatex",
        "-silent",
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error"
      ],
      "env": {}
    }
  ],
  "latex-workshop.view.pdf.viewer": "browser",
  "latex-workshop.intellisense.package.enabled": true,
  "latex-workshop.intellisense.unimathsymbols.enabled": true,
  "latex-workshop.latex.autoClean.run": "onFailed",
  "latex-workshop.synctex.afterBuild.enabled": true,
  "latex-workshop.showContextMenu": true,
  "latex-workshop.latex.autoBuild.run": "never",
  "latex-workshop.latex.clean.subfolder.enabled": true,
  "latex-workshop.latex.clean.fileTypes": [
    "*.aux",
    "*.bbl",
    "*.blg",
    "*.idx",
    "*.ind",
    "*.lof",
    "*.lot",
    "*.out",
    "*.toc",
    "*.acn",
    "*.acr",
    "*.alg",
    "*.glg",
    "*.glo",
    "*.gls",
    "*.ist",
    "*.fls",
    "*.log",
    "*.fdb_latexmk",
    "*.snm",
    "*.nav",
    "*.loa",
    "*.run.xml",
    "*.xdv",
    "*.thm",
    "*.bcf"
  ],
}
```


## References

- [SJTUThesis src](https://github.com/sjtug/SJTUThesis)
- [SJTUThesis wiki](https://github.com/sjtug/SJTUThesis/wiki/%E6%9C%AC%E5%9C%B0%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E)
- [SJTUThesis Q&A](https://github.com/sjtug/SJTUThesis/wiki/%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98)