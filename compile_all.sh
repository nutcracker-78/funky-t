#!/bin/bash
# compile_all.sh - Build-Skript für PDF und Videos

set -e

echo "=== LaTeX kompilieren ==="
cd latex
pdflatex -interaction=nonstopmode main.tex
echo "PDF erstellt: latex/main.pdf"

echo ""
echo "=== Manim-Animationen rendern ==="
cd ../animations/src
for scene in *.py; do
    if [ -f "$scene" ]; then
        echo "Rendere: $scene"
        python -m manim "$scene" -pqh
    fi
done

echo ""
echo "=== Fertig! ==="