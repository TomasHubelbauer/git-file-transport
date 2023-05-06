set -x
set -e

rm -rf super
rm -rf sub

mkdir super
cd super
git init
cd ..

mkdir sub
cd sub
git init
touch README.md
git add README.md
git commit -m "Add README"
cd ..

cd super
git submodule add ../sub

# Workaround:
# git -c protocol.file.allow=always submodule add ../sub
