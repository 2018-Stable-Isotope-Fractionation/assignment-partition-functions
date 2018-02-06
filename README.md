# In-class Team Assignment

This is a team assignment, make sure you all pick the correct team(s) when you accept the assignment.
 1. Work together with the instructor to implement the `calc_U` function in a new branch
 2. Merge the branch into master and pull it to the RStudio Server for everyone
 3. Divide up the remaining functions (`calc_high_T_term_ratio`, `calc_low_T_term_ratio`, `calc_m_ratio`, `calc_vib_freq_ratio`) and imlement them in each class (each student or team in a new branch)
 4. Review the pull requests for each function and merge into master, then pull again for everyone
 5. Complete the exercises in [`assignment.Rmd`](assignment.Rmd) together in class
 6. Make sure that the code in `assignment.Rmd` passes linting checks and renders/knits successfully to HTML

## Setup

1. Login: log into the RStudio Server with your username and password
2. Clone repository (with git previously configured in the [RMarkdown introduction](../assignment-rmarkdown-intro/)):
  - if you have an open project in your RStudio Server, close it by choosing **Close Project** from the **Project** dropdown button in the upper right corner (it should say `Project: (None)` afterwards)
  - at the top of this repository, click on the green **Clone or download** button and copy the shown link to the clipboard
  - in your R Server terminal (not the console), type `git clone ` and paste the copied link right after (so it says something to the effect `git clone https://github.com/......git`), then execute the command to creates a local copy of your GitHub repository (the new folder should show up in the files list on the right)
4. Load project:
 - click the **Project** dropdown button again and choose **Open Project**
 - navigate to the new project folder and select the `project.Rproj` file inside it
 - this will load a new R session rooted in the new project folder (you will see this project now selected in the **Project** dropdown)
