import QtQuick 2.4
import QtQuick.Controls 1.3
import QtWebEngine 1.2
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("MiniBrowser")

    Column{
        id:mainColumn
        width: parent.width
        height: parent.height
        spacing: 5
        anchors.leftMargin: 5

        Row{
            id:addrRow
            width: parent.width
            height: 30
            spacing: 2

            Rectangle{
                width: parent.width-goBtn.width-mapBtn.width-5
                height: parent.height
                border.color: "green"
                border.width: 1

                TextEdit{
                    id:addrInput
                    font.pixelSize: 25
                    width: parent.width-1
                    height: parent.height-1
                    text:"https://www.baidu.com/"
                }
            }

            Button{
                id:goBtn
                width: 50
                height: parent.height
                text: "Go"
                onClicked: {
                    webview.url=addrInput.text
                }
            }

            Button{
                id:mapBtn
                width: 50
                height: parent.height
                text: "Map"
                onClicked:{
                    webview.url="qrc:/baiduMap.html"
                }
            }
        }

        WebEngineView{
            id: webview
            width: parent.width
            height: parent.height-addrRow.height-5
            //url: "qrc:/baiduMap.html"
            url:"https://www.baidu.com/"
        }
    }
}
