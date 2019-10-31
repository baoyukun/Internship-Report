# Internship-Report

Tex template for SPEIT internship report. 巴黎高科学院工程师实习报告LaTeX模板。

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

[Overleaf template](https://www.overleaf.com/read/ndszvjtqykzq),

then enjoy it anywhere :blush:

## How to use locally

### Preparation

Download source files on your laptop. Utilities recommended for writing locally on WINDOWS are as followings:
- [texlive](http://mirror.hust.edu.cn/CTAN/systems/texlive/tlnet/)
- [editor](https://www.texstudio.org)
- [font](https://pan.baidu.com/s/1kV68haJ)(optional)
- [Windows shell](https://babun.github.io/)(optional)

### Commands

- **make**: compile and generate `internship.pdf`
- **make pvc**(recommended): continually compile and update target whenever src files change
- **make clean**: clean up auxiliary files
- **make debug**: error debug

:warning: Do NOT and Do NOT Need to call `make pvc` followed by another `make`!  

You may directly pass by a whole `latexmk` command in shell or in TexStudio options. For example,  

In shell: `latexmk -xelatex -gg -silent internship`

In TexStudio (Options --> Configure --> Commands --> latexmk):  
`latexmk.exe -xelatex -gg -silent -synctex=1 -interaction=nonstopmode %.tex`


### References

- [SJTUThesis src](https://github.com/sjtug/SJTUThesis)
- [SJTUThesis wiki](https://github.com/sjtug/SJTUThesis/wiki/%E6%9C%AC%E5%9C%B0%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E)
- [SJTUThesis Q&A](https://github.com/sjtug/SJTUThesis/wiki/%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98)