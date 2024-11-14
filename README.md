# PowerButtonFix

## Wrapper script for removing unwanted lxqt-about package, fixing shutdown and reset button locations in program menu and making htese buttons actually work like they should

This script fixes a couple of bigs in the latest release of Ubuntu 24.04 LTS used in my environment.

We will:
* Remove lxqt-about package
* Fetch three system files and put in the correct location
* Remove script

## Instructions
### Installation
Simply download and run the retrofit.sh script. This should be as simple as:
```
wget https://raw.githubusercontent.com/jb2cool/PowerButtonFix/main/retrofit.sh
bash retrofit.sh
```
