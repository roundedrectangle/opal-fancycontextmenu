/*
    Quickddit - Reddit client for mobile phones
    Copyright (C) 2016  Sander van Grieken

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see [http://www.gnu.org/licenses/].
*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Image {
    property bool down
    property bool highlighted
    property color color: Theme.primaryColor
    property color highlightColor : Theme.highlightColor
    property string icon

    signal clicked

    source: icon + "?" + (highlighted ? highlightColor : color)
    opacity: enabled ? 1.0 : Theme.opacityLow
    width: parent.itemWidth
    fillMode: Image.Pad

    onVisibleChanged: parent.calculateItemWidth()

    height: Theme.itemSizeSmall
}