## Using VS Code as an editor

Assumes you already are running R locally.

1. Install a latex distribution, I've had good luck with the R package tinytex:
    a. install.packages("tinytex")
    b. tinytex::install_tinytex()
    c. Follow prompts
2. [Download vs code](https://code.visualstudio.com/download)
3. Install extensions:
    a. Latex Workshop (For live previews)
    b. Code Spell Checker (optional but recommended)
4. Open and render your manuscript.
    a. On the "Welcome"" tab click "Open..." and open your manuscript folder (MAN for this template)
    b. Open the manuscript file (main.tex in this template) and ctrl+S or cmd+S (save) to prompt a build
    c. You should see a pdf appear for your manuscript, right click and select "Open to the Side"
    d. Now whenever you save the source file, you should see your manuscript file update.
