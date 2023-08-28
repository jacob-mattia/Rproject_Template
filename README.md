# Rproject_Template
A default template for starting new git and renv compatible R projects

## How to Initialize
1. Select "Use this template" -> "create new repository" and name your new project
2. In new repo select "Code" and copy https link
3. Within RStudio, select "File" -> "New Project..." -> "Version Control" -> "Git" -> paste link
4. Navigate to "starter_scripts" folder
5. Source "1_renv_activation.R"
6. Source "2_project_starter.R"
7. Follow instructions in console to install and load appropriate packages
8. Project is now setup to be environment controlled with renv and version controlled with git

## How to Sync with Git
1. On Git tab, use Pull to update local files from github
2. To update github from local files, select "Staged" next to each file and folder to sync
3. Select "Commit" and type a note about the changes made to said files
4. Select "Push"
5. Github will now be updated with newest file versions

## Important Notes
+ Renv will track R version, but will **not** update it via renv.lock. It will provide a warning if the R versions are different.
+ Github is meant for storing updates to code, not data. Trying to sync large files **will not work.**
    + As such, "data", "analysis", and "results" folder will not sync with github. Use rysnc or other methods to move data between systems.

## Suggestions for Use
+ "data" folder should be treated as read-only, and raw data files should **NEVER** be directly altered.
+ Main analyis pipleine should be contained in "analysis.R" file within scripts folder.
+ Be sure to include descriptive commits when syncing with github to ensure easy troubleshooting.

For any questions on using this template, email jacob.mattia@gmail.com


