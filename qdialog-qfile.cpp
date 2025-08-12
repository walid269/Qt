#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QFile>
#include <QString>
#include <QTextStream>
#include <QFileDialog>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
      QFile file("C:\\Users\\Public\\Downloads\\JhonSnow\\hello.c");


    // if(!file.exists())
    // {
    //     //! WRITE - File Create

    //     file.open(QIODevice::WriteOnly | QIODevice::Text);
    //     QTextStream out(&file);
    //     out << "#include <stdio.h> \nint main(){printf(\"Hello Xornex\");}";
    //     file.close();

    // }else {
    //     //! READ - File Read
    //     file.open(QIODevice::ReadOnly | QIODevice::Text);
    //     QTextStream in(&file);
    //     QString content = in.readAll();

    //     ui->label->setText(content);
    //     file.close();
    // }

      //! APPEND - With the file existed txt add new something
      file.open(QIODevice::Append | QIODevice::Text);
      QTextStream out(&file);
      out << " \n\\\ This was append operation result";

      file.seek(0);
      auto postion = file.pos();
      ui->statuslabel->setText(QString::number(postion));
      file.close();




}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_openBtn_clicked()
{
    //Single File Open
    QString filename = QFileDialog::getOpenFileName(
                                                    this,
                                                    "Open by Xornex",
                                                    "main.c",
                                                    "All Files(*);;Image(*.png *.jpg)"
                                                    );
    ui->statuslabel->setText(filename);
}


void MainWindow::on_multipleBtn_clicked()
{
    //Multiple File Open
    QStringList filename = QFileDialog::getOpenFileNames(
        this,
        "Open by Xornex",
        "main.c",
        "All Files(*);;Image(*.png *.jpg)"
        );
    ui->statuslabel->setText(filename.join("\n"));
}


void MainWindow::on_saveFileBtn_clicked()
{
    //Multiple File Open
    QString savefile = QFileDialog::getSaveFileName(
        this,
        "Save by Xornex",
        "main.c",
        "All Files(*);;Image(*.png *.jpg)"
        );
    ui->statuslabel->setText(savefile);
}


void MainWindow::on_SaveDirBtn_clicked()
{
    //Chose only folder
    QString SelectOnlyFolder = QFileDialog::getExistingDirectory(
        this,
        "Open Folder",
        "C:\\Users\\Public\\Downloads", // if you want to empty it but open always currenyt project folder
        QFileDialog::ShowDirsOnly

        );
    ui->statuslabel->setText(SelectOnlyFolder);
}


void MainWindow::on_appendBtn_clicked()
{
    
}

