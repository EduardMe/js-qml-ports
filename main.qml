import QtQuick 2.3
import QtQuick.Window 2.2
import "qrc:/libs/moment.js" as Moment
import "qrc:/libs/knwl.js" as Knwl

Window {
    visible: true

    MouseArea {
        anchors.fill: parent
        onClicked: {
            var knwlInstance = new Knwl.Knwl('english');
            knwlInstance.init("This is a string. This was written on the 2nd of June, of 2015.");
            var dates = knwlInstance.get('dates');

            console.log(dates[1].year)
            console.log(dates[1].month)
            console.log(dates[1].day)

            Qt.quit();
        }
    }

    Text {
        text: qsTr(Moment.moment().endOf('day').fromNow())
        anchors.centerIn: parent
    }
}
