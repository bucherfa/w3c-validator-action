Exactly what I needed already exists: https://github.com/Cyb3r-Jak3/html5validator-action

It even uses a validator from w3c just under an obfuscated name.

# W3C Validator Action

> Validate all HTML files inside a repository against the W3C validator

## Usage

Create a workflow in your repository by placing the file `.github/workflows/validator.yml` inside your repository with the following content.

```
name: w3c-validator
on:
  push:
    branches: [ master, develop ]
  pull_request:
jobs:
  w3c-validator:
    name: Validate files
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2
      - name: Run Validator
        uses: bucherfa/w3c-validator-action@v0.2
```
