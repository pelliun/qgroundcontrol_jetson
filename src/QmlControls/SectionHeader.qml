import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import QGroundControl.ScreenTools
import QGroundControl.Palette

Button {
    id:         control
    checkable:  true
    focusPolicy: Qt.ClickFocus

    property var            color:          qgcPal.text
    property bool           showSpacer:     true
    property ButtonGroup    buttonGroup:    null

    property real _sectionSpacer: ScreenTools.defaultFontPixelWidth / 2  // spacing between section headings

    onButtonGroupChanged: {
        if (buttonGroup) {
            buttonGroup.addButton(control)
        }
    }

    onClicked: checked = !checked

    QGCPalette { id: qgcPal; colorGroupEnabled: enabled }

    contentItem: ColumnLayout {
        Item {
            Layout.preferredHeight: _sectionSpacer
            width:                  1
            visible:                showSpacer
        }

        QGCLabel {
            text:               control.text
            color:              control.color
            Layout.fillWidth:   true

            QGCColoredImage {
                anchors.right:          parent.right
                anchors.verticalCenter: parent.verticalCenter
                width:                  parent.height / 2
                height:                 width
                source:                 "/qmlimages/arrow-down.png"
                color:                  qgcPal.text
                visible:                !control.checked
            }
        }

        Rectangle {
            Layout.fillWidth:   true
            height:             1
            color:              qgcPal.text
        }
    }

    background: Item {}
}
