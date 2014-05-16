# Line Breaks

You work at a news agency.  All of the writers write in plain text, and they all have "soft wraps" turned on in their
editors, so all of the their lines are really, really long.

You need to take these text files, and break the lines up such that no line is longer than a certain number of
characters (80, by default).  You must not break up any words.

## Examples

Let's say you have the following text, and you need to have a max line length of 20:

```
Jean shorts you probably haven't heard of them farm-to-table.

Another line.
```

The result would be:

```
Jean shorts you
probably haven't
heard of them
farm-to-table.

Another line
```

Lines should not have trailing spaces.

# Extra

Go through each file in the data directory and create new file where the text breaks at 80 characters.

Add these new files to an `output` directory, and give them the same names as the original files.

# Setup

* Fork
* Clone
* Turn on TravisCI for the fork by
  visiting https://travis-ci.org/profile/<github user name>, clicking the "Sync now" button
  and scrolling down to find the repository to build.
* Create a new branch for your work using `git checkout -b v1`
* Implement specs and code
* Push using `git push -u origin v1`

## Further Practice

This warmup can be completed multiple times to increase your comfort level with the material.
To work on this from scratch, you can:

1. Add an upstream remote that points to the original repo `git remote add upstream git@github.com:gSchool/text-centering.git`
1. Fetch the latest from the upstream remote using `git fetch upstream`
1. Create a new branch from the master branch of the upstream remote `git checkout -b v2 upstream/master`
1. Implement specs and code
1. Push using `git push -u origin v2`

Each time you do the exercise, create a new branch. For example the 3rd time you do the exercise the branch
name will be v3 instead of v2.
