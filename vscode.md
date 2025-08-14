## Using VS Code as an editor

Assumes you already are running R locally.

1. Install a latex distribution, I've had good luck with the R package tinytex:
    1. install.packages("tinytex")
    2. tinytex::install_tinytex()
    3. Follow prompts
2. [Download vs code](https://code.visualstudio.com/download)
3. Install extensions:
    1. LaTeX Workshop (For live previews)
    2. Code Spell Checker (optional but recommended)
4. Open and render your manuscript.
    1. On the "Welcome"" tab click "Open..." and open your manuscript folder (MAN for this template)
    2. Open the manuscript file (main.tex in this template) and ctrl+S or cmd+S (save) to prompt a build
    3. You should see a pdf appear for your manuscript, right click and select "Open to the Side"
    4. Now whenever you save the source file, you should see your manuscript file update.

## Windows with MikTex installed to using TinyTex

On my (Logan Harris) office computer, I already had MikTex installed. However, when I went to try to run step 4 above, I got an error saying a perl installation was needed. Instead, you can tell LaTex Workshop to use TinyTex with the following steps:

1. Ctrl + Shift + p
2. Type: "Preferences: Open User Settings (JSON)" 
3. Add / edit settings.json (mine was just {}) with the below information, replacing USER with your appropriate username:
```
{
    "latex-workshop.latex.tools": [
    {
    "name": "pdflatex",
    "command": "C:/Users/USER/AppData/Roaming/TinyTeX/bin/windows/pdflatex.exe",
    "args": [
    "-synctex=1",
    "-interaction=nonstopmode",
    "-file-line-error",
    "%DOCFILE%"
    ]
    },
    {
    "name": "bibtex",
    "command": "C:/Users/USER/AppData/Roaming/TinyTeX/bin/windows/bibtex.exe",
    "args": [
    "%DOCFILE%"
    ]
    }
    ],
    "latex-workshop.latex.recipes": [
    {
    "name": "pdf->bibtex->pdf->pdf",
    "tools": [
    "pdflatex",
    "bibtex",
    "pdflatex",
    "pdflatex"
    ]
    }
    ],
}
```
4. Save and retry step 4 above.
