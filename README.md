# Computer Architecture Course Notes

This repository contains notes for a Computer Architecture course, built with Sphinx documentation.

## Documentation

### Building Locally

1. Set up the virtual environment:
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```

2. Build the documentation:
   ```bash
   cd docs
   make html
   ```

3. View the documentation:
   Open `docs/build/html/index.html` in your browser.

[Link to live website](https://wajahatriaz.github.io/Computer-Architecture-Course-Notes/)

## Structure

- `docs/` - Sphinx documentation
  - `source/` - Documentation source files (Markdown)
  - `build/` - Generated HTML (git-ignored)
- `Chapter-1/` - Legacy markdown files
- `requirements.txt` - Python dependencies

See `docs/README.md` for more details on working with the documentation.
