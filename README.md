# Tercen Palettes

## Specification

Palettes are stored in the __palette.json__ file.

List of palette objects with the following attributes:

* __type__: string, any of __sequential__, __diverging__, __categorical__
* __name__: string, name of the palette, to be displayed in the GUI
* __colors__: string array, list of colors in hexadecimal format

Example: 

```json
{
    "name": "PiYG",
    "type": "diverging",
    "colors": [
        "#E9A3C9",
        "#F7F7F7",
        "#A1D76A"
    ]
}
```

## Rules

* Linear Interpolation for continuous (sequential and diverging) palettes, between regular breaks defined by the color list

* Categorical palettes are repeated when more categories than colors in the palette

* Sequential palettes: min and max are defined (default: from data, can be user-defined). > 2 colors.

* Diverging palettes: min, middle and max are defined (default: from data, can be user-defined). 3 colors only.

* Palette name serves as a unique ID

## Palettes

### Sequential

* Jet
* Spectral
* viridis
* GnBu
* YlGnBu
* PuRd
* winter
* cool
* Wistia
* hot
* afmhot

### Diverging

* RdBu
* PiYGn
* coolwarm
* bwr

### Categorical

* Tercen1 (Palette-1)
* Tercen2 (Palette-2)
* HashPalette
* Accent
* Dark
* Set1
* Set2
* Set3
* tab10
* tab20
