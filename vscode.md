## Using VS Code as an editor

Assumes you already are running R locally.

1. Install a latex distribution, I've had good luck with the R package tinytex:
    1. install.packages("tinytex")
    2. tinytex::install_tinytex()
    3. Follow prompts
2. [Download vs code](https://code.visualstudio.com/download)
3. Install extensions:
    1. Latex Workshop (For live previews)
    2. Code Spell Checker (optional but recommended)
4. Open and render your manuscript.
    1. On the "Welcome"" tab click "Open..." and open your manuscript folder (MAN for this template)
    2. Open the manuscript file (main.tex in this template) and ctrl+S or cmd+S (save) to prompt a build
    3. You should see a pdf appear for your manuscript, right click and select "Open to the Side"
    4. Now whenever you save the source file, you should see your manuscript file update.
