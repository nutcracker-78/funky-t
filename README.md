# Funktionentheorie Zusammenfassung

Eine LaTeX-Zusammenfassung der Vorlesung Funktionentheorie mit Manim-Animationen.

## Struktur

```
funktionentheorie-zusammenfassung/
├── latex/           # LaTeX-Dokument
│   ├── main.tex     # Hauptdatei
│   ├── preamble.tex # Pakete und Styles
│   ├── chapters/    # Einzelne Kapitel
│   └── images/      # Statische Manim-Exporte
├── animations/      # Manim-Animationen
│   ├── src/         # Python-Skripte
│   └── rendered/    # MP4/GIF-Dateien
└── compile_all.sh   # Build-Skript
```

## Verwendung

### LaTeX kompilieren
```bash
cd latex
pdflatex main.tex
```

### Manim-Animationen erstellen
```bash
cd animations/src
python -m manim scene.py -pqh
```

### Alle Dateien erstellen
```bash
./compile_all.sh
```

## Beispiele

![Beispiel-Animation](animations/rendered/example.gif)