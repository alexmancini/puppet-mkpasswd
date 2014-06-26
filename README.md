# mkpasswd

#### Table of Contents

1. [Overview](#overview)
2. [Setup - The basics of getting started with mkpasswd](#setup)
    * [Installing as a git submodule](#git-submodule-setup)
    * [Installing using librarian-puppet](#librarian-setup)
3. [Usage](#usage)

## Overview

This is a simple Puppet module to provide a random password generator function.

## Setup

### Git Submodule Setup

mkpasswd can be added to a git repository using submodules: `git submodule add git@github.com:alexmancini/puppet-mkpasswd.git modules/mkpasswd`

### Librarian Setup

mkpasswd can also be installed using [librarian-puppet](http://librarian-puppet.com/) by adding this to your Puppetfile:

    mod 'alexmancini/puppet-mkpasswd',
      :git => 'https://github.com/alexmancini/puppet-mkpasswd.git',
      :ref => '0.0.1'

## Usage

Invoke `mkpasswd()` to generate a random 32-character hex password.
