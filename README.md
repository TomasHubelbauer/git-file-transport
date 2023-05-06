# Git `file` transport

1. `mkdir super`
2. `cd super`
3. `git init`
4. `cd ..`
5. `mkdir sub`
6. `cd sub`
7. `touch README.md`
8. `git add README.md`
9. `git commit -m "Add README"`
10. `cd ..`
11. `cd super`
12. `git submodule add ../sub`
