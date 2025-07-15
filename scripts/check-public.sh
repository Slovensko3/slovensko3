#!/bin/bash

if git diff --cached --name-only | grep -q "^public/"; then
  echo "❌ ERROR: 'public/' directory is staged for commit! Please remove it (it's in .gitignore)."
  exit 1
fi

exit 0
