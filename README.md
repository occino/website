# Website - Created with Hugo

## Install dependencies

```bash
brew install go
brew install hugo
brew install sass/sass/sass
```

## Fetch hugo themes (git submodules)

```bash
git submodule update --init --recursive
```

## Start development server

```bash
hugo server -D
```

## Build static production files

```bash
hugo
```
