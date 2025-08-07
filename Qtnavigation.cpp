// Navigating Parts

//Required For Navigating -> add into the main window header file
#include "loginmainwindow.h"
#include "logindialog.h"


//Required For Navigaing -> add into the main window private section
LoginDialog *loginDialog;
LoginMainWindow *loginMainWindow;


void MsgBox::on_loginWIn_clicked()
{
    hide();
    loginMainWindow = new LoginMainWindow(this);
    loginMainWindow->show();
}


void MsgBox::on_LoginDialog_clicked()
{

    loginDialog = new LoginDialog(this);
    loginDialog->show();
}

