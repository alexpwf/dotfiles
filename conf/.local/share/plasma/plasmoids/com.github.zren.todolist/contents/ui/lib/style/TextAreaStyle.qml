import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
import org.kde.plasma.core 2.0 as PlasmaCore
import QtQuick.Controls.Styles.Plasma 2.0 as PlasmaStyles
import QtQuick.Controls.Styles.Breeze 1.0 as BreezeStyles
import QtQuick.Controls.Styles.Flat 1.0 as FlatStyles

FlatStyles.TextAreaStyle {
	id: textAreaStyle
	readonly property int onePixel: Math.max(1, Math.round(units.devicePixelRatio * 1))
	property int borderRadius: Math.round(units.devicePixelRatio * 3)
	property int borderColor: Math.round(units.devicePixelRatio * 3)

	// readonly property TextArea control: __control
	// frame: Rectangle {
	// 	anchors.fill: parent
	// 	// implicitWidth: Math.round(150 * PlasmaFlatStyle.scaleFactor)
	// 	// implicitHeight: Math.round(170 * PlasmaFlatStyle.scaleFactor)
	// 	radius: control.frameVisible ? textAreaStyle.borderRadius : 0
	// 	border.width: textAreaStyle.onePixel
	// 	border.color: !control.frameVisible ? "transparent" : control.activeFocus ? PlasmaFlatStyle.highlightColor : PlasmaFlatStyle.darkFrameColor
	// 	color: !control.backgroundVisible ? "transparent" : enabled ? PlasmaFlatStyle.backgroundColor : PlasmaFlatStyle.disabledColor
	// 	opacity: enabled ? 1.0 : 0.15
	// }
}
