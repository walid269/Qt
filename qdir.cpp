#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <qdir.h>
#include <QStringList>
#include <QStandardPaths>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    QDir dir("C:/Users/Public/Downloads");

    //! Single Folder Create
    if(dir.mkdir("Test1"))
    {
        qDebug() << "Test 1 Created Successfully";
        ui->label->setText("Successfully create");

    }else{
        qDebug() << "Failed to Create " ;
        ui->label->setText("Failed to create");
    }

    //! multiple child folder create
    if(dir.mkpath("Test1/Test2/Test3"))
    {
        qDebug() << "Test 1 Created Successfully";
        ui->label->setText("Successfully create");
    }else{
        qDebug() << "Failed to Create " ;
        ui->label->setText("Failed to create");
    }

    //! Delete
    if(dir.rmdir("del")) {
        qDebug() << "Directory deleted successfully";
    } else {
        qDebug() << "Failed to delete directory";
    }




    //! Rename folder
    dir.rename("IamNew","JhonSnow");
    ui->pathlist->setText(dir.absolutePath());


    //! Enter a folder
    dir.cd("cdme");
    ui->lab->setText(dir.absolutePath());



    //! List of folder files
    QStringList files = dir.entryList(QDir::Files);
    ui->lab->setText(files.join("\n"));




    //!Pre maked folders locaton like document/music/gellary
    qDebug() << "Location" << QStandardPaths::writableLocation(QStandardPaths::DownloadLocation);
    qDebug() << "Location" << QStandardPaths::writableLocation(QStandardPaths::MusicLocation);










}

MainWindow::~MainWindow()
{
    delete ui;
}
