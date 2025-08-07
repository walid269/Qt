#include "msgbox.h"
#include "ui_msgbox.h"
#include <QMessageBox>

MsgBox::MsgBox(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MsgBox)
{
    ui->setupUi(this);
}

MsgBox::~MsgBox()
{
    delete ui;
}
void MsgBox::on_warnedBtn_clicked()
{
    QMessageBox::warning(this, "Warning", "Tsanvir");
}

void MsgBox::on_QBtn_clicked()
{
    QMessageBox::StandardButton reply;
    reply = QMessageBox::question(this, "Question", "Are you sure you want to continue?",
                          QMessageBox::Yes | QMessageBox::No | QMessageBox::Cancel
                          );

    if(reply == QMessageBox::Yes)
    {
        ui->TxtLabel->setText("Thanks for agree");
    }else {
        ui->TxtLabel->setText("NO Problem");
    }
}

void MsgBox::on_InfoBtn_clicked()
{
    // QMessageBox::information(this, "Information", "This is an information message.");
    QMessageBox msg;
    msg.setWindowTitle("Info");
    msg.setText("This is my Custom MsgBox");
    msg.setStandardButtons(QMessageBox::Yes | QMessageBox::No);
    msg.setIcon(QMessageBox::Question);
    msg.exec();

}

void MsgBox::on_ErrorBtn_clicked()
{
    QMessageBox::critical(this, "Error", "An error has occurred!");
}
