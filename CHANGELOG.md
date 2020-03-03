## [1.0.0] - Initial release.

* Swap `ExpansionTile`'s `Container` for a `Material` widget.
* Attach the `Material`'s `elevation` to an Animation.
* Add a rounded border which hides in plain sight until raised.
* Drop borderColor and backgroundColor; use theme.canvasColor and theme.cardColor instead.

## [1.0.0+1] - Example directory

* Provide an `/example` directory.

## [1.0.1] - Fix Flutter stable

* Swap the newer `textTheme.subtitle1` for the older `textTheme.subhead`.

## [1.0.2] - API and visual improvements

* Add option to provide your own animation curves.
* Add option to customize animation duration.
* Use better animation technique for padding.
* Use custom InkWell, to respect rounded edges.