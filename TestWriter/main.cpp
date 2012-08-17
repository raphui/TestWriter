#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"

#include "happlication.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;

    //QDeclarativeView view;

    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/TestWriter/main.qml"));
    viewer.showExpanded();

    HApplication hApp;

    hApp.init();

    //view.rootContext()->setContextProperty("hApplication" , &hApp);

    return app->exec();
}
