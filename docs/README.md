# Computer Architecture Notes - Sphinx Documentation

This directory contains the Sphinx documentation for the Computer Architecture course notes.

## Building the Documentation

### Prerequisites

1. Activate the virtual environment:
   ```bash
   source ../venv/bin/activate
   ```

2. Install dependencies (if not already installed):
   ```bash
   pip install -r ../requirements.txt
   ```

### Build Commands

To build the HTML documentation:
```bash
cd docs
make html
```

The generated HTML files will be in `build/html/`. Open `build/html/index.html` in your browser to view the documentation.

### Other Build Options

- **Clean build**: `make clean` - Remove all built files
- **PDF build**: `make latexpdf` - Build LaTeX and PDF (requires LaTeX installation)
- **Help**: `make help` - Show all available build targets

## Project Structure

```
docs/
├── source/
│   ├── conf.py           # Sphinx configuration
│   ├── index.md          # Main documentation page
│   ├── chapter1/         # Chapter 1 notes
│   │   ├── index.md
│   │   └── notes.md
│   └── _static/          # Static files (CSS, images, etc.)
├── build/                # Generated documentation (git-ignored)
└── Makefile             # Build automation
```

## Adding New Content

1. Create new Markdown files in `source/` or subdirectories
2. Add them to the appropriate `toctree` directive in an index file
3. Rebuild with `make html`

## MyST Markdown Features

This documentation uses MyST (Markedly Structured Text) which extends Markdown with Sphinx features:

- **Cross-references**: `[text](path/to/file.md)`
- **Directives**: Use ` ```{directive}` blocks
- **Admonitions**: `:::{note}`, `:::{warning}`, etc.
- **Math**: LaTeX math with `$...$` or `$$...$$`

See the [MyST documentation](https://myst-parser.readthedocs.io/) for more details.
