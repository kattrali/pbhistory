# PBHistory

Simple CLI to list text items on the OS X pasteboard

## Usage

    pbhistory [--board (general | find)] [--number COUNT]

* The `--board` (or `-b`) flag specifies which pasteboard to use, and the
  default is `general`.
* The `--number` setting specifies the number of items to list

## Installation

### Homebrew

    brew install kattrali/formulae/pbhistory

### Source

PBHistory is built using [Conche](https://github.com/conche/conche), the swift
build system. To build, install conche then run:

    make install

