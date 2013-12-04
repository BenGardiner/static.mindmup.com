MindMup - Zero Friction Mind Map Canvas
=======================================

MindMup is a zero-friction mind map canvas. Our aim is to create the most productive mind mapping environment out there, removing
all the distractions and providing powerful editing shortcuts. 

This git project contains the static files required by the [server side MindMup](http://github.com/mindmup/mindmup) project, to be easily
deployed to a CDN network. 


Folder Structure
-------------

- The _content_ folder contains all the scripts, CSS files and images needed for MindMup. 
- The _pack_ folder contains templates for file aggregation and packaging
- The root folder contains useful scripts

Packaging and deployment
------------------------

- pack.sh

Each file in the _pack_ folder contains a list of files to be packaged into a single deployment file. Run _pack.sh_ to creatie 
a timestamped version of the whole package as a subfolder of the content folder. Eg if you run _pack.sh_ on 11 December 2013 at 15:30:22, and the
pack folder contains a file called example.js with a list of three javascript file names, the script will create a subfolder 20131211153022 in
the content folder and put a file called example.js there, created by concatenating the three javascript files listed in the original package.

- push_to_s3.sh

To push new files (from the _content_ folder) to the static.mindmup.com bucket on S3, use _push_to_s3.sh_. Invoke it with --dryrun to just see the files that will be uploaded. This script
depends on the [AWS command line tools](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html).
