import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents

FocusScope {
	id: control
	property string text: ''
	property int margins: Math.round(3 * units.devicePixelRatio)
	property int paddingTop: Math.round(3 * units.devicePixelRatio)
	property int paddingLeft: Math.round(3 * units.devicePixelRatio)
	property int contentHeight: label.contentHeight
	property int boxHeight: margins + paddingTop + contentHeight + paddingTop + margins
	implicitHeight: boxHeight
	property int lineCount: label.lineCount
	property color linkColor: theme.linkColor

	property alias containsMouse: mouseArea.containsMouse
	MouseArea {
		id: mouseArea
		anchors.fill: parent
		hoverEnabled: true
		cursorShape: Qt.IBeamCursor
	}

	function alpha(c, a) {
		return Qt.rgba(c.r, c.g, c.b, a)
	}

	property int borderRadius: 3 * units.devicePixelRatio
	Rectangle {
		anchors.fill: parent
		anchors.margins: control.margins
		color: theme.backgroundColor
		border.width: Math.max(1, Math.round(1 * units.devicePixelRatio))
		radius: control.borderRadius
		border.color: control.containsMouse ? theme.highlightColor : alpha(theme.buttonTextColor, 0.3)

		PlasmaComponents.Label {
			id: label
			text: control.text
			anchors.top: parent.top
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.topMargin: control.paddingTop
			anchors.leftMargin: control.paddingLeft
			anchors.rightMargin: control.paddingLeft
			wrapMode: Text.Wrap
			linkColor: control.linkColor
			verticalAlignment: Text.AlignTop
		}
	}

	property var menu: null
	property bool tabChangesFocus: true
	signal linkActivated()
	property int textFormat: TextEdit.RichText
	signal isEditingChanged()
	property int textMargin: 0
}
