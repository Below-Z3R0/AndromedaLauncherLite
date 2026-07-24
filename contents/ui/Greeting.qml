import QtQuick 2.15
import QtQuick.Effects

Item {
    property var textSize
    readonly property var textWidth: nameLabel.width
    Text {
        id: nameLabel
        text: plasmoid.configuration.enableGreeting && plasmoid.configuration.customGreeting ? plasmoid.configuration.customGreeting : plasmoid.configuration.enableGreeting ? i18n("Hi, %1", kuser.fullName): i18n("%1@%2", kuser.loginName, kuser.host)
        color: textColor
        font.family: textFont
        font.pixelSize: textSize
        font.bold: true
    }
    // Text shadow for greeting label
    MultiEffect {
        anchors.fill: nameLabel
        enabled: plasmoid.configuration.enableGlow
        shadowEnabled: plasmoid.configuration.enableGlow
        shadowColor: glowColor1
        shadowVerticalOffset: 0
        shadowHorizontalOffset: 0
        shadowBlur: 1.25
        source: nameLabel
    }
}