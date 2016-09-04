# Lab 1: Introduction to R, RStudio, and GitHub

#### Goals for this lab
- [ ] Learn how to use GitHub to get and submit assignments.
- [ ] Get acquainted with RStudio.
- [ ] Learn some R programming by building your first model.

## Part 1: GitHub

Git is software for version control. Have you ever done this?

![](img/paper-titles.PNG)

Version control is the solution to this problem. Software like Git keeps track
of all the changes that you make to a document, so that you can go back to any
version at any time. GitHub is a website that makes using Git really easy.

Version control is especially important when building software, because it is
inevitable that, at some point, a change will be made that breaks the software.
Version control is also helpful because it makes collaborating easy.

### 1.1. Install GitHub Desktop

GitHub Desktop is a software program that you can install on your computer to make interacting with GitHub (the website) easier. It's already installed on our classroom machines. If you are working on assignments on your own computer, then go to [desktop.github.com](http://desktop.github.com) and follow the instructions there to install it.

### 1.2. Downloading an assignment (forking)

*This is a review of what we did at the start of the lab, for your reference.*

Assignments in this class will be posted as GitHub repositories. Sometimes the
repositories will contain only a set of instructions, but often they will include
some data or code.

There are two different ways that a repository is downloaded from GitHub. If you are an administrator of the repository, then you can simply download a copy. If you are not an administrator, then you can *fork* the repository. *Forking* creates your own copy of the repository that you own and can modify as you wish. (It's
called forking because each copy of the repository will follow its own path.)

In this class, you can get an assignment by clicking the assignment link on Moodle. This will automate the forking process for you. The assignment repository will be forked to a new repository that you own. Once you have forked the repository, you can download it by going to the repository's page on github.com. The URL will be given to you during the forking process, and will also be accessible from the main [github.com](http://github.com) page when you log in - there's a list of repositories you can contribute to on the right hand side of the page.

Once you are on the repository page, click the big green "Clone or Download" button on the right side of the page, near the top. If you've got GitHub Desktop installed (part 1.1), you can choose "Open in Desktop" for the easiest method of getting a copy.

![](img/open-in-desktop.PNG)

This will launch GitHub Desktop. Choose a folder to put the repository into and then let GitHub Desktop do the rest. You've now downloaded the assignment.

### 1.3. Editing the assignment

Editing a file in a Git repository works just like editing any other file. Open this file (README.md) with RStudio. Change the sentence below. (Leave the `>` symbol in place - it marks the sentence as a `blockquote`)

> Don't change this sentence.

Save the file, and then open GitHub Desktop. On the left side of GitHub Desktop, select the repository. At the top of the page, make sure the Changes tab is selected. There should be a blue dot, indicating that there are some changes that have been made that have not yet been *committed* to the repository.

![](img/changes-gh-desktop.PNG)

If you click on a file in this view, the right side of the screen will display the changes that were made to that file.

At the bottom of the window, there is a place to enter a summary and message. This is where you describe what changes you made in this *commit*. The summary should be short, but descriptive. You can optionally add a longer description of the changes.

![](img/commit-msg.PNG)

Once you have added a summary message, you can click *commit to master*.

At this point your changes are part of the repository on your own computer, but they haven't been copied to GitHub yet. Click the sync button in the top right corner to synchronize the GitHub repository with your own copy.

You now know how to use the basics of GitHub. There are many other features that you can take advantage of. Take 20 minutes sometime before Tuesday's class to work through [GitHub's own tutorial](https://guides.github.com/activities/hello-world/), where you will learn more about *branches* and *pull requests*. These features will be really useful when you start writing code collaboratively with your classmates.

## Part 2: RStudio

In this class we are going to use R for the majority of the modeling that we do.  [RStudio](www.rstudio.org) is a free IDE (integrated development environment) for writing code in R. It's already installed on the lab machines, but if you need to install it on your own machine, simply go to their website and download it. You have to install R separately.

One of the features of RStudio is a project management system. An RStudio project is a
way of grouping together R files so that references between files (like loading a data file) work seamlessly. RStudio project files have the `.Rproj` extension. There's already a project file created for this lab inside the `Lab1-Part3` folder. If you open that (double click), RStudio should automatically launch.

## Part 3: R (and your first model)

In this repository, open the `Lab1-Part3` folder. You'll find an RStudio project called `Lab1-Part3`. Open the project (if you haven't already). Then, in the files section of RStudio, click on `R-intro.R` to start part 3. Some parts of this file are meant as a reference for you to use. There are also many questions embedded in the file where you should write code for practice.

Once you have worked through the `R-intro.R` file, you should read the `absolute-guessing-readme.md` file, located in the same directory. This is a markdown (.md) file, which is a simple markup language for formatting text files. If you open the file on GitHub's website, the formatting will display. After reading through this introduction, you'll build a model in the `absolute-guessing-model.R` file.

## Submitting the assignment

To submit the lab, simply commit all your changes and sync with GitHub. I'll grade the last version you sync before the deadline. If you want to use one of your late days for a submission, email me to let me know.
