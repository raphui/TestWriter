#include <QtGui/QApplication>
#include <QDeclarativeContext>
#include <QDeclarativeView>

#include "qmlapplicationviewer.h"

#include "happlication.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;

    HApplication *hApp = new HApplication();

    hApp->init();

    QDeclarativeView view;
    view.rootContext()->setContextProperty("hApplication" , hApp);
    view.setSource( QUrl("qml/TestWriter/main.qml") );
    view.show();


    //viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    //viewer.setMainQmlFile(QLatin1String("qml/TestWriter/main.qml"));
    //viewer.showExpanded();


    return app->exec();
}
