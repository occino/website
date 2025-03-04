+++
title = "Hugo | Markdown Website Generator"
description = "This is the very first post"
date = "2025-03-04"
author = "Nico Nostheide"
+++

# Getting started

## Install dependencies

```bash
brew install go
brew install hugo
brew install sass/sass/sass
```

## Create new hugo project

```bash
hugo new site website
cd website
git init
```

Add theme to project

```bash
git submodule add https://github.com/lordmathis/hugo-theme-nightfall.git themes/hugo-theme-nightfall
```

Activate theme in config file

```bash
echo "theme = 'hugo-theme-nightfall'" >> hugo.toml
```

## Start development server

```bash
hugo server -D
```
