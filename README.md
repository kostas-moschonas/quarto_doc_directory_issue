Large documents, like scientific journal articles or university theses, will be a collection of many workflows, which you are likely to have organised in complicated looking directory. 

Quarto documents, by default, set the working directory to the folder they are in. This creates problems if you want to integrate a lot of code from many different sources. You can copy paste the code, but your document will soon become very cluttered with work you have already done, prevent you from focusing on writing the paper instead, and, most importantly, any changes to the source code will need to be copy pasted to the quarto document too. It gets messy quickly! 

You can easily `source()` scripts with calculations, figures, or anything else instead of copy pasting the code. HOWEVER, when you render your document, the different working directory may prevent those scripts from running. 

In a Quarto **project**, a separate .yml file appears in your root directory where you can specify the directory from which to render all your documents. 

You can manually create such a .yml file even if you are working on individual .qmd files without a a quarto project per se. Create a new text file and paste:

```
project:
  execute-dir: project
```

Then store as `_quarto.yml` in the root directory of your R project. 

This is the simplest and easiest workaround I found. 

In Markdown, you do not have this problem, as you can explicitly change the Knit Directory: 

![image](https://github.com/user-attachments/assets/681fb28f-8c0a-4965-803e-a532ba3b05a9)
