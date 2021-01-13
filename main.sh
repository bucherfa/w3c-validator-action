#!/bin/bash

HTML_FILES=$(find . -type f -name '*.html')
EXIT_CODE=0

for FILE in $HTML_FILES; do
  echo "File: $FILE"
  RESULT=$(curl --silent --header "Content-Type: text/html; charset=utf-8" \
    --data-binary @"$FILE" \
    https://validator.w3.org/nu/?out=text)
  echo "$RESULT"
  if [[ $RESULT == *"There were errors."* ]]; then
    EXIT_CODE=1
  fi
  echo ""
done

exit $EXIT_CODE
