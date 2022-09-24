# Material Icons SVG

Rails helper to insert inline SVG files of [Material Icons](https://fonts.google.com/icons?selected=Material+Icons).

The SVGs are copied from the GitHub repository:
[material-icons/material-icons](https://github.com/material-icons/material-icons)


## Installation

Add this line to your application's Gemfile:

```
gem 'material_icons_svg', github: 'owlstown/material_icons_svg'
```

Execute:

```
$ bundle
```


## Usage

```
material_icons_svg(name, family: 'baseline', options: {})
```

`name` is the name of the icon (lower case and snake case).

`family` is one of `baseline` (default), `outline`, `round`, `sharp`, and `twotone`.

`options` is a hash as defined by the gem [inline_svg](https://github.com/jamesmartin/inline_svg#options).
