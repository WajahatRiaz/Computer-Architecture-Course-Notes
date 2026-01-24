#!/bin/bash
# Build script for Sphinx documentation

# Activate virtual environment if it exists
if [ -d "venv" ]; then
    source venv/bin/activate
fi

# Build the documentation
cd docs
make html

# Return to root directory
cd ..

echo ""
echo "Documentation built successfully!"
echo "Open docs/build/html/index.html in your browser to view."
