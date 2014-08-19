scripts
=======

Shell scripts to simplify development of the WattDepot site. Note that you will need to have [Jekyll](http://jekyllrb.com/) installed to run all the scripts other than `wattdepot-install.sh`.

wattdepot-install.sh
--------------------

After creating a top-level directory called something like "wattdepot.github.io", place this script in there and invoke it.  

Invoking the script results in the creation of two subdirectories, src/ and master/, and checks out into those directories the corresponding branches from the wattdepot.github.io repository. 

The src/ branch contains the source files used as input to Jekyll.  The master/ branch is where the HTML output from Jekyll will be placed.   GitHub uses the contents of the master/ branch when displaying http://wattdepot.github.io.

wattdepot-run-local.sh
----------------------

Place this script in your top-level directory (in the same directory as wattdepot-install.sh). 

This script runs Jekyll over the files in the src/ directory, and makes the results available at http://localhost:4000.  

wattdepot-publish.sh {commit message}
-------------------------------------

Place this script in your top-level directory (in the same directory as wattdepot-install.sh). 

You must invoke this script with one argument: a string representing the commit message.

This script runs Jekyll over the files in the src/ directory and places the generated HTML files in the master/ directory. 

It then pushes both src/ and master/ directories to GitHub.

wattdepot-pull.sh
-----------------

Place this script in your top-level directory (in the same directory as wattdepot-install.sh). 

This script does a git pull in both the master/ and src/ directories.   Useful to sync your local workspace with commits made by another team member to github.





