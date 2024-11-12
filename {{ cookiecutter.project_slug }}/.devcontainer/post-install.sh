#!/bin/bash
set -ex

# Git configuration
git config --global user.name "{{ cookiecutter.author }}" 
git config --global user.email "{{ cookiecutter.author_email }}"
git config --global core.editor "code --wait"
