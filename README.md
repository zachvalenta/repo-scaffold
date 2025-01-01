# 👋 TLDR

This is a tool to:

# 🎛️ USAGE

All commands are runnable via the `Makefile`; just run `make` to see the documentation:
```sh
$ make

======================================================================

🚀  MAIN

run:       run app
repl:      start REPL

📦 DEPENDENCIES

env:        show environment info
deps:       list prod dependencies

======================================================================
```

How I use this repo to scaffold projects on my machine:
```sh
function jsj(){
    dname="$1";
    fpath="$(pwd)/$dname"
    mkdir "$fpath";
    cp -r $DOC_DIR/zv/projects/repo-scaffold/* "$fpath";
    \cd "$fpath";
    sed -i '' "s/name = \"\"/name = \"$dname\"/" pyproject.toml
    t;
}
```
