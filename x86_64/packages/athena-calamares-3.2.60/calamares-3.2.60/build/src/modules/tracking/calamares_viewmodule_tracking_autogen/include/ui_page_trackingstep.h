/********************************************************************************
** Form generated from reading UI file 'page_trackingstep.ui'
**
** Created by: Qt User Interface Compiler version 5.15.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_PAGE_TRACKINGSTEP_H
#define UI_PAGE_TRACKINGSTEP_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QToolButton>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_TrackingPage
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *generalExplanation;
    QWidget *noneGroup;
    QHBoxLayout *noneLayout;
    QCheckBox *noneCheckBox;
    QLabel *noneIcon;
    QLabel *noneExplanation;
    QWidget *installGroup;
    QHBoxLayout *installLayout;
    QCheckBox *installCheckBox;
    QLabel *installIcon;
    QLabel *installExplanation;
    QToolButton *installPolicyButton;
    QWidget *machineGroup;
    QHBoxLayout *machineLayout;
    QCheckBox *machineCheckBox;
    QLabel *machineIcon;
    QLabel *machineExplanation;
    QToolButton *machinePolicyButton;
    QWidget *userGroup;
    QHBoxLayout *userLayout;
    QCheckBox *userCheckBox;
    QLabel *userIcon;
    QLabel *userExplanation;
    QToolButton *userPolicyButton;
    QLabel *generalPolicyLabel;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *TrackingPage)
    {
        if (TrackingPage->objectName().isEmpty())
            TrackingPage->setObjectName(QString::fromUtf8("TrackingPage"));
        TrackingPage->resize(799, 400);
        verticalLayout = new QVBoxLayout(TrackingPage);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        generalExplanation = new QLabel(TrackingPage);
        generalExplanation->setObjectName(QString::fromUtf8("generalExplanation"));
        generalExplanation->setStyleSheet(QString::fromUtf8("margin-bottom: 1ex;\n"
"margin-left: 2em;"));
        generalExplanation->setWordWrap(true);

        verticalLayout->addWidget(generalExplanation);

        noneGroup = new QWidget(TrackingPage);
        noneGroup->setObjectName(QString::fromUtf8("noneGroup"));
        noneLayout = new QHBoxLayout(noneGroup);
        noneLayout->setObjectName(QString::fromUtf8("noneLayout"));
        noneCheckBox = new QCheckBox(noneGroup);
        noneCheckBox->setObjectName(QString::fromUtf8("noneCheckBox"));

        noneLayout->addWidget(noneCheckBox);

        noneIcon = new QLabel(noneGroup);
        noneIcon->setObjectName(QString::fromUtf8("noneIcon"));
        noneIcon->setMaximumSize(QSize(64, 64));
        noneIcon->setBaseSize(QSize(64, 64));
        noneIcon->setPixmap(QPixmap(QString::fromUtf8(":/tracking/level-none.svg")));

        noneLayout->addWidget(noneIcon);

        noneExplanation = new QLabel(noneGroup);
        noneExplanation->setObjectName(QString::fromUtf8("noneExplanation"));
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(noneExplanation->sizePolicy().hasHeightForWidth());
        noneExplanation->setSizePolicy(sizePolicy);
        noneExplanation->setWordWrap(true);

        noneLayout->addWidget(noneExplanation);


        verticalLayout->addWidget(noneGroup);

        installGroup = new QWidget(TrackingPage);
        installGroup->setObjectName(QString::fromUtf8("installGroup"));
        installLayout = new QHBoxLayout(installGroup);
        installLayout->setObjectName(QString::fromUtf8("installLayout"));
        installCheckBox = new QCheckBox(installGroup);
        installCheckBox->setObjectName(QString::fromUtf8("installCheckBox"));

        installLayout->addWidget(installCheckBox);

        installIcon = new QLabel(installGroup);
        installIcon->setObjectName(QString::fromUtf8("installIcon"));
        installIcon->setMaximumSize(QSize(64, 64));
        installIcon->setBaseSize(QSize(64, 64));
        installIcon->setPixmap(QPixmap(QString::fromUtf8(":/tracking/level-install.svg")));

        installLayout->addWidget(installIcon);

        installExplanation = new QLabel(installGroup);
        installExplanation->setObjectName(QString::fromUtf8("installExplanation"));
        sizePolicy.setHeightForWidth(installExplanation->sizePolicy().hasHeightForWidth());
        installExplanation->setSizePolicy(sizePolicy);
        installExplanation->setText(QString::fromUtf8("TextLabel"));
        installExplanation->setWordWrap(true);

        installLayout->addWidget(installExplanation);

        installPolicyButton = new QToolButton(installGroup);
        installPolicyButton->setObjectName(QString::fromUtf8("installPolicyButton"));
        installPolicyButton->setText(QString::fromUtf8("..."));
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/tracking/data/images/information.svgz"), QSize(), QIcon::Normal, QIcon::Off);
        installPolicyButton->setIcon(icon);

        installLayout->addWidget(installPolicyButton);


        verticalLayout->addWidget(installGroup);

        machineGroup = new QWidget(TrackingPage);
        machineGroup->setObjectName(QString::fromUtf8("machineGroup"));
        machineLayout = new QHBoxLayout(machineGroup);
        machineLayout->setObjectName(QString::fromUtf8("machineLayout"));
        machineCheckBox = new QCheckBox(machineGroup);
        machineCheckBox->setObjectName(QString::fromUtf8("machineCheckBox"));

        machineLayout->addWidget(machineCheckBox);

        machineIcon = new QLabel(machineGroup);
        machineIcon->setObjectName(QString::fromUtf8("machineIcon"));
        machineIcon->setMaximumSize(QSize(64, 64));
        machineIcon->setBaseSize(QSize(64, 64));
        machineIcon->setPixmap(QPixmap(QString::fromUtf8(":/tracking/level-machine.svg")));

        machineLayout->addWidget(machineIcon);

        machineExplanation = new QLabel(machineGroup);
        machineExplanation->setObjectName(QString::fromUtf8("machineExplanation"));
        sizePolicy.setHeightForWidth(machineExplanation->sizePolicy().hasHeightForWidth());
        machineExplanation->setSizePolicy(sizePolicy);
        machineExplanation->setText(QString::fromUtf8("TextLabel"));
        machineExplanation->setWordWrap(true);

        machineLayout->addWidget(machineExplanation);

        machinePolicyButton = new QToolButton(machineGroup);
        machinePolicyButton->setObjectName(QString::fromUtf8("machinePolicyButton"));
        machinePolicyButton->setText(QString::fromUtf8("..."));
        machinePolicyButton->setIcon(icon);

        machineLayout->addWidget(machinePolicyButton);


        verticalLayout->addWidget(machineGroup);

        userGroup = new QWidget(TrackingPage);
        userGroup->setObjectName(QString::fromUtf8("userGroup"));
        userLayout = new QHBoxLayout(userGroup);
        userLayout->setObjectName(QString::fromUtf8("userLayout"));
        userCheckBox = new QCheckBox(userGroup);
        userCheckBox->setObjectName(QString::fromUtf8("userCheckBox"));

        userLayout->addWidget(userCheckBox);

        userIcon = new QLabel(userGroup);
        userIcon->setObjectName(QString::fromUtf8("userIcon"));
        userIcon->setMaximumSize(QSize(64, 64));
        userIcon->setBaseSize(QSize(64, 64));
        userIcon->setPixmap(QPixmap(QString::fromUtf8(":/tracking/level-user.svg")));

        userLayout->addWidget(userIcon);

        userExplanation = new QLabel(userGroup);
        userExplanation->setObjectName(QString::fromUtf8("userExplanation"));
        sizePolicy.setHeightForWidth(userExplanation->sizePolicy().hasHeightForWidth());
        userExplanation->setSizePolicy(sizePolicy);
        userExplanation->setText(QString::fromUtf8("TextLabel"));
        userExplanation->setWordWrap(true);

        userLayout->addWidget(userExplanation);

        userPolicyButton = new QToolButton(userGroup);
        userPolicyButton->setObjectName(QString::fromUtf8("userPolicyButton"));
        userPolicyButton->setText(QString::fromUtf8("..."));
        userPolicyButton->setIcon(icon);

        userLayout->addWidget(userPolicyButton);


        verticalLayout->addWidget(userGroup);

        generalPolicyLabel = new QLabel(TrackingPage);
        generalPolicyLabel->setObjectName(QString::fromUtf8("generalPolicyLabel"));
        generalPolicyLabel->setTextFormat(Qt::RichText);
        generalPolicyLabel->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        generalPolicyLabel->setOpenExternalLinks(false);
        generalPolicyLabel->setTextInteractionFlags(Qt::TextBrowserInteraction);

        verticalLayout->addWidget(generalPolicyLabel);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer);


        retranslateUi(TrackingPage);

        QMetaObject::connectSlotsByName(TrackingPage);
    } // setupUi

    void retranslateUi(QWidget *TrackingPage)
    {
        TrackingPage->setWindowTitle(QCoreApplication::translate("TrackingPage", "Form", nullptr));
        generalExplanation->setText(QCoreApplication::translate("TrackingPage", "Placeholder", nullptr));
        noneCheckBox->setText(QString());
        noneIcon->setText(QString());
        noneExplanation->setText(QCoreApplication::translate("TrackingPage", "<html><head/><body><p>Click here to send <span style=\" font-weight:600;\">no information at all</span> about your installation.</p></body></html>", nullptr));
        installCheckBox->setText(QString());
        installIcon->setText(QString());
        machineCheckBox->setText(QString());
        machineIcon->setText(QString());
        userCheckBox->setText(QString());
        userIcon->setText(QString());
        generalPolicyLabel->setText(QCoreApplication::translate("TrackingPage", "<html><head/><body><p><a href=\"placeholder\"><span style=\" text-decoration: underline; color:#2980b9;\">Click here for more information about user feedback</span></a></p></body></html>", nullptr));
    } // retranslateUi

};

namespace Ui {
    class TrackingPage: public Ui_TrackingPage {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_PAGE_TRACKINGSTEP_H
