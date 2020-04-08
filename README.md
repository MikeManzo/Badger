# Badger Framework
[![Status](https://travis-ci.org/MikeManzo/Ansi.svg?branch=master)](https://travis-ci.org/MikeManzo/Badger)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/mikemanzo/Badger.svg)
![GitHub last commit](https://img.shields.io/github/last-commit/MikeManzo/Badger.svg)
![GitHub All Releases](https://img.shields.io/github/downloads/MikeManzo/Badger/total.svg)
![Swift](https://img.shields.io/badge/%20in-swift%205.1-orange.svg)

Unread count badge for macOS. Plays well with auto layout. Is designable and inspectable from Interface Builder (IB).

## API

### count

Gets/sets the count to an interger value.

	myBadgeView.count = 42

Set ```count``` to zero to hide the badge view and to any non-zero integer to show it.

### incrementCounter()

Increments the counter by one (does not perform upper bounds checking).

	myBadgeView.incrementCounter()

### decrementCounter()

Decrements the counter by one (will stop at zero).

	myBadgeView.decrementCounter()

## A note on auto-alignment

When using the auto-alignment feature, you *must* set one placeholder constraint on the Badge View. This is to avoid Xcode automatically adding prototyping constraints to the view and interfering with the alignment algorithms.

## Other interesting tidbits

  * Changing the anchor point of a layer without making the layer’s location jump (```NSView``` extention, see ```NSView+ChangeAnchorPointWithoutMakingTheLayerJump.swift```)
  * Using tags in custom NSViews
  * A category that easily lets you calculate the length (in points) of a string in a given font (see ```NSFont+WidthOfString.swift```)
  * Using ```@IBDesignable``` and ```@IBInspectable``` to create custom components that you can customise using Interface Builder.
  * Uses the [Cartography library] [1] for setting up Auto Layout constraints declaratively.

## Copyright and license

Copyright © 2020 Mike Manzo. Released under the [MIT License](https://github.com/MikeManzo/Badger/blob/master/LICENSE).

[1]: https://github.com/robb/Cartography
