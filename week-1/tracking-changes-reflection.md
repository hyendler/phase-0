- How does tracking and adding changes make developers' lives easier?

It means that developers can more easily follow the changes that are being made, and understand the process behind it.  

- What is a commit?

A commit is a save/snapshot of your files at that current time.  

- What are the best practices for commit messages?

Best practices are to keep messages short - the first line is like the title/header, and the rest is the description.  Also, messages should be written with 

Commit messages
- What does the HEAD^ argument mean?

HEAD^ means to move the current branch to the commit that is the head.  

- What are the 3 stages of a git change and how do you move a file from one stage to the other?

Untracked, modified/staged, and commmited.  To move from untracked to staged, you need to git add.  In order to move from staged to committed, you commit it.

- Write a handy cheatsheet of the commands you need to commit your changes
git status
git add .
git commit -m "message"

- What is a pull request and how do you create and merge one?
Pull request is a request for someone (or you) to review your code before merging it with the master.  To create a pull request, you first check to make sure that the master is all updated before pushing the branch to Github.  Then you go into github and click on pull request.  Once it is reviewed, you click on merge.

- Why are pull requests preferred when working with teams?

Pull requests are great because they allow for code reviews and to make sure that everything is pristine before merging with the master.  