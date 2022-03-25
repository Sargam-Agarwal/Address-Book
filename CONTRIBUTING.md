# Contribution Guidelines

Thank you for your consideration of contributing to this project. All the contributions from anyone willing to improve/add new features to this project are most welcome. The following guide will help you
get yourself started.

# Steps To Follow👩‍💻👨‍💻
These are the steps you can follow in order to contribute to this project.
## Step 1 : Find an issue
- Explore the project and find a feature/functionality that you'd like to add or improve.
- Each issue will uniquely identify a single topic/sub-topic.
- Although more issues will be generated, if you find an issue having been assigned to too many contributors already, we recommend you to:
  1. Look for other issues.
  2. Request contribution to the same issue for a different format.
  3. Create your own issue and request the tag from us.

### For creation of issues :
* A well-defined (not necessarily long) **description of the topic** in focus must be provided.
* Your issue can be **closed** if the issue you created already exists. Use the search functionality on Github Issues.
* Once you have decided the problem you want to work upon, shoot an issue and patiently wait for us to have a look over it and assign it to you.
* You can **ONLY** work on the issues that have been **assigned** to you.

## Step 2 : Fork the Project
- Fork this Repository. This will create a Local Copy of this Repository on your Github Profile. Keep a reference to the original project by adding `upstream` remote.
- Run the following commands on the terminal in your system:
```
$ git clone https://github.com/<your-username>/Address-Book
$ cd Address-Book
$ git remote add upstream https://github.com/Sargam-Agarwal/Address-Book
```

- If you have already forked the project, update your copy before working.
```
$ git remote update
$ git checkout <branch-name>
$ git rebase upstream/<branch-name>
```
## Step 3 : Checkout to a New Branch
- Create a new branch. Its name is generally related to the issue you are working on.
```
# This will create a new branch with name 'branch_name' and switch to that branch from the current branch that you were working in 
$ git checkout -b branch_name
```
## Step 4 : Work on the issue assigned
- Work on the issue(s) assigned to you. 
- Add all the files/folders needed.
- After you've made changes or made your contribution to the project, add changes to the branch you've just created by:
```
# This will add all new files to branch 'branch_name' (the one that you were working in)
$ git add .
```
## Step 5 : Commit
- To commit, give a descriptive message for the convenience of reveiwer by:
```
$ git commit -m "message"
```
## Step 6 : Push Your Changes To Remote
- Now you are ready to push your local changes or work on your system to the remote repository on github
- When your work is ready and complies with the project conventions, upload your changes to your fork (also known as origin):

```
# To push your work to your remote repository
$ git push -u origin branch_name
```

## Step 7 : Pull Request
- Go to your repository in browser and click on 'compare and pull requests' tab that will be visible to you automatically once you have pushed your changes to your fork. Then add a title and description to your pull request that explains your contribution.

- Voila! Your Pull Request has been submitted. Wait patiently for it to be reviewed and merged.🥳

## Additional Resources
You can also refer to the following articles on basics of Git and Github:
- [Forking a Repo](https://help.github.com/en/github/getting-started-with-github/fork-a-repo)
- [Cloning a Repo](https://help.github.com/en/desktop/contributing-to-projects/creating-an-issue-or-pull-request)
- [How to create a Pull Request](https://opensource.com/article/19/7/create-pull-request-github)
- [Getting started with Git and GitHub](https://towardsdatascience.com/getting-started-with-git-and-github-6fcd0f2d4ac6)
- [Learn GitHub from Scratch](https://lab.github.com/githubtraining/introduction-to-github)


## Ending Note
Thank you so much for taking out the time and contributing to this project. Looking forward to your work and contribution!
