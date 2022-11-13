#!/bin/sh

SPOONS="TilingWindowManager AppWindowSwitcher"

for SPOON in ${SPOONS}; do
    echo "processing ${SPOON}"
    cd "${SPOON}.spoon"
    ~/hammerspoon/scripts/docs/bin/build_docs.py --templates ../templates/ --output_dir . --json --html --markdown --standalone .
    # sed 's/\[docs\](index.md) » //g' "markdown/${SPOON}.md" > README.md
    cp "markdown/${SPOON}.md" README.md
    cd ..
done
