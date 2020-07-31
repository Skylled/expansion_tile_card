## [1.1.0] - Customizability

* **Breaking** - Migrate text to 2018 Material Design spec. Requires Flutter >= 1.17.0
* Add `initialElevation` to adjust shadows/heights -- Hannnes1
* Add `isThreeLine` to match ListTile -- Hannnes1
* Add `shadowColor` to not use Material's default shadowing -- Hannnes1
* Add `animateTrailing` to allow the `trailing` widget to rotate on expand/collapse -- Hannnes1
* Add `collapse`, `expand`, and `toggleExpansion` methods. -- Solution credit: Slightfoot
* Make `ExpansionTileCardState` class public
* Include demo of `collapse` & `expand` in reworked example app.

## [1.0.3] - More customizability

* Introduce `contentPadding` to alter inner padding of ListTile.
* Surface background color options as `baseColor` and `expandedColor`.

## [1.0.2+2] - Inkwell fix

* Use the same border for the Inkwell as used for the Card

## [1.0.2+1] - README update

* Put a GIF into the README

## [1.0.2] - API and visual improvements

* Add option to provide your own animation curves.
* Add option to customize animation duration.
* Use better animation technique for padding.
* Use custom InkWell, to respect rounded edges.

## [1.0.1] - Fix Flutter stable

* Swap the newer `textTheme.subtitle1` for the older `textTheme.subhead`.

## [1.0.0+1] - Example directory

* Provide an `/example` directory.

## [1.0.0] - Initial release.

* Swap `ExpansionTile`'s `Container` for a `Material` widget.
* Attach the `Material`'s `elevation` to an Animation.
* Add a rounded border which hides in plain sight until raised.
* Drop borderColor and backgroundColor; use theme.canvasColor and theme.cardColor instead.