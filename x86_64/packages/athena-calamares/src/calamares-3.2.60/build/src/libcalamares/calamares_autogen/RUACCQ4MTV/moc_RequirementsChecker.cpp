/****************************************************************************
** Meta object code from reading C++ file 'RequirementsChecker.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../../src/libcalamares/modulesystem/RequirementsChecker.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'RequirementsChecker.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Calamares__RequirementsChecker_t {
    QByteArrayData data[9];
    char stringdata0[117];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Calamares__RequirementsChecker_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Calamares__RequirementsChecker_t qt_meta_stringdata_Calamares__RequirementsChecker = {
    {
QT_MOC_LITERAL(0, 0, 30), // "Calamares::RequirementsChecker"
QT_MOC_LITERAL(1, 31, 20), // "requirementsProgress"
QT_MOC_LITERAL(2, 52, 0), // ""
QT_MOC_LITERAL(3, 53, 4), // "done"
QT_MOC_LITERAL(4, 58, 3), // "run"
QT_MOC_LITERAL(5, 62, 22), // "addCheckedRequirements"
QT_MOC_LITERAL(6, 85, 7), // "Module*"
QT_MOC_LITERAL(7, 93, 8), // "finished"
QT_MOC_LITERAL(8, 102, 14) // "reportProgress"

    },
    "Calamares::RequirementsChecker\0"
    "requirementsProgress\0\0done\0run\0"
    "addCheckedRequirements\0Module*\0finished\0"
    "reportProgress"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Calamares__RequirementsChecker[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x06 /* Public */,
       3,    0,   47,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    0,   48,    2, 0x0a /* Public */,
       5,    1,   49,    2, 0x0a /* Public */,
       7,    0,   52,    2, 0x0a /* Public */,
       8,    0,   53,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 6,    2,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void Calamares::RequirementsChecker::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<RequirementsChecker *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->requirementsProgress((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->done(); break;
        case 2: _t->run(); break;
        case 3: _t->addCheckedRequirements((*reinterpret_cast< Module*(*)>(_a[1]))); break;
        case 4: _t->finished(); break;
        case 5: _t->reportProgress(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (RequirementsChecker::*)(const QString & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&RequirementsChecker::requirementsProgress)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (RequirementsChecker::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&RequirementsChecker::done)) {
                *result = 1;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject Calamares::RequirementsChecker::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_Calamares__RequirementsChecker.data,
    qt_meta_data_Calamares__RequirementsChecker,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *Calamares::RequirementsChecker::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Calamares::RequirementsChecker::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Calamares__RequirementsChecker.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Calamares::RequirementsChecker::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void Calamares::RequirementsChecker::requirementsProgress(const QString & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void Calamares::RequirementsChecker::done()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
