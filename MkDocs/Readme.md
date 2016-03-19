# Readme

## MkDocs

  * http://www.mkdocs.org/user-guide/writing-your-docs/

MkDocs is a very simple site generator that reads in markdown files and auto generates a site
which can be auto published to a Git Repo's gh-pages branch.
Anything posted within a gh-pages branch on github is automatically visible as a static web site.

## Script commands

  * **build.py build** - Do a dummy build into the site sub directory
  * **build.py publish** - Generate and publish a site to github.io (gh-pages branch) for the repo
  * **build.py serve** - Auto Serv the site on http://127.0.0.1:8000

One of the advantages to the serve command is that any changes to the mark down files while viewing the site
cause the browser to auto refresh the site as it's being viewed.

## Install

  * Install python
  * pip install mkdocs
  * for the different themes - mkdocs-bootswatch, mkdocs-bootstrap, mkdocs-alabaster