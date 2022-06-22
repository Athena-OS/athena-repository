/****************************************************************************
** Meta object code from reading C++ file 'Config.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../../../src/modules/tracking/Config.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'Config.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_TrackingStyleConfig_t {
    QByteArrayData data[14];
    char stringdata0[179];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_TrackingStyleConfig_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_TrackingStyleConfig_t qt_meta_stringdata_TrackingStyleConfig = {
    {
QT_MOC_LITERAL(0, 0, 19), // "TrackingStyleConfig"
QT_MOC_LITERAL(1, 20, 15), // "trackingChanged"
QT_MOC_LITERAL(2, 36, 0), // ""
QT_MOC_LITERAL(3, 37, 13), // "policyChanged"
QT_MOC_LITERAL(4, 51, 8), // "tracking"
QT_MOC_LITERAL(5, 60, 13), // "TrackingState"
QT_MOC_LITERAL(6, 74, 9), // "isEnabled"
QT_MOC_LITERAL(7, 84, 14), // "isConfigurable"
QT_MOC_LITERAL(8, 99, 11), // "setTracking"
QT_MOC_LITERAL(9, 111, 6), // "policy"
QT_MOC_LITERAL(10, 118, 14), // "trackingStatus"
QT_MOC_LITERAL(11, 133, 16), // "DisabledByConfig"
QT_MOC_LITERAL(12, 150, 14), // "DisabledByUser"
QT_MOC_LITERAL(13, 165, 13) // "EnabledByUser"

    },
    "TrackingStyleConfig\0trackingChanged\0"
    "\0policyChanged\0tracking\0TrackingState\0"
    "isEnabled\0isConfigurable\0setTracking\0"
    "policy\0trackingStatus\0DisabledByConfig\0"
    "DisabledByUser\0EnabledByUser"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_TrackingStyleConfig[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       4,   68, // properties
       1,   84, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   54,    2, 0x06 /* Public */,
       3,    1,   55,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    0,   58,    2, 0x0a /* Public */,
       6,    0,   59,    2, 0x0a /* Public */,
       7,    0,   60,    2, 0x0a /* Public */,
       8,    1,   61,    2, 0x0a /* Public */,
       8,    1,   64,    2, 0x0a /* Public */,
       9,    0,   67,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    2,

 // slots: parameters
    0x80000000 | 5,
    QMetaType::Bool,
    QMetaType::Bool,
    QMetaType::Void, 0x80000000 | 5,    2,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::QString,

 // properties: name, type, flags
      10, 0x80000000 | 5, 0x0049580b,
       6, QMetaType::Bool, 0x00495801,
       7, QMetaType::Bool, 0x00495801,
       9, QMetaType::QString, 0x00495801,

 // properties: notify_signal_id
       0,
       0,
       0,
       1,

 // enums: name, alias, flags, count, data
       5,    5, 0x0,    3,   89,

 // enum data: key, value
      11, uint(TrackingStyleConfig::DisabledByConfig),
      12, uint(TrackingStyleConfig::DisabledByUser),
      13, uint(TrackingStyleConfig::EnabledByUser),

       0        // eod
};

void TrackingStyleConfig::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<TrackingStyleConfig *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->trackingChanged(); break;
        case 1: _t->policyChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: { TrackingState _r = _t->tracking();
            if (_a[0]) *reinterpret_cast< TrackingState*>(_a[0]) = std::move(_r); }  break;
        case 3: { bool _r = _t->isEnabled();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 4: { bool _r = _t->isConfigurable();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 5: _t->setTracking((*reinterpret_cast< TrackingState(*)>(_a[1]))); break;
        case 6: _t->setTracking((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 7: { QString _r = _t->policy();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (TrackingStyleConfig::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TrackingStyleConfig::trackingChanged)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (TrackingStyleConfig::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TrackingStyleConfig::policyChanged)) {
                *result = 1;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<TrackingStyleConfig *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< TrackingState*>(_v) = _t->tracking(); break;
        case 1: *reinterpret_cast< bool*>(_v) = _t->isEnabled(); break;
        case 2: *reinterpret_cast< bool*>(_v) = _t->isConfigurable(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->policy(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<TrackingStyleConfig *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setTracking(*reinterpret_cast< TrackingState*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject TrackingStyleConfig::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_TrackingStyleConfig.data,
    qt_meta_data_TrackingStyleConfig,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *TrackingStyleConfig::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *TrackingStyleConfig::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_TrackingStyleConfig.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int TrackingStyleConfig::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 4;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void TrackingStyleConfig::trackingChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void TrackingStyleConfig::policyChanged(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
struct qt_meta_stringdata_Config_t {
    QByteArrayData data[12];
    char stringdata0[186];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Config_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Config_t qt_meta_stringdata_Config = {
    {
QT_MOC_LITERAL(0, 0, 6), // "Config"
QT_MOC_LITERAL(1, 7, 20), // "generalPolicyChanged"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 13), // "generalPolicy"
QT_MOC_LITERAL(4, 43, 15), // "installTracking"
QT_MOC_LITERAL(5, 59, 22), // "InstallTrackingConfig*"
QT_MOC_LITERAL(6, 82, 15), // "machineTracking"
QT_MOC_LITERAL(7, 98, 22), // "MachineTrackingConfig*"
QT_MOC_LITERAL(8, 121, 12), // "userTracking"
QT_MOC_LITERAL(9, 134, 19), // "UserTrackingConfig*"
QT_MOC_LITERAL(10, 154, 10), // "noTracking"
QT_MOC_LITERAL(11, 165, 20) // "TrackingStyleConfig*"

    },
    "Config\0generalPolicyChanged\0\0generalPolicy\0"
    "installTracking\0InstallTrackingConfig*\0"
    "machineTracking\0MachineTrackingConfig*\0"
    "userTracking\0UserTrackingConfig*\0"
    "noTracking\0TrackingStyleConfig*"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Config[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       4,   54, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       3,    0,   47,    2, 0x0a /* Public */,
       4,    0,   48,    2, 0x0a /* Public */,
       6,    0,   49,    2, 0x0a /* Public */,
       8,    0,   50,    2, 0x0a /* Public */,
      10,    1,   51,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    2,

 // slots: parameters
    QMetaType::QString,
    0x80000000 | 5,
    0x80000000 | 7,
    0x80000000 | 9,
    QMetaType::Void, QMetaType::Bool,    2,

 // properties: name, type, flags
       3, QMetaType::QString, 0x00495801,
       4, 0x80000000 | 11, 0x00095809,
       6, 0x80000000 | 11, 0x00095809,
       8, 0x80000000 | 11, 0x00095809,

 // properties: notify_signal_id
       0,
       0,
       0,
       0,

       0        // eod
};

void Config::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Config *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->generalPolicyChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: { QString _r = _t->generalPolicy();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 2: { InstallTrackingConfig* _r = _t->installTracking();
            if (_a[0]) *reinterpret_cast< InstallTrackingConfig**>(_a[0]) = std::move(_r); }  break;
        case 3: { MachineTrackingConfig* _r = _t->machineTracking();
            if (_a[0]) *reinterpret_cast< MachineTrackingConfig**>(_a[0]) = std::move(_r); }  break;
        case 4: { UserTrackingConfig* _r = _t->userTracking();
            if (_a[0]) *reinterpret_cast< UserTrackingConfig**>(_a[0]) = std::move(_r); }  break;
        case 5: _t->noTracking((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Config::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Config::generalPolicyChanged)) {
                *result = 0;
                return;
            }
        }
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 3:
        case 2:
        case 1:
            *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< TrackingStyleConfig* >(); break;
        }
    }

#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Config *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->generalPolicy(); break;
        case 1: *reinterpret_cast< TrackingStyleConfig**>(_v) = _t->installTracking(); break;
        case 2: *reinterpret_cast< TrackingStyleConfig**>(_v) = _t->machineTracking(); break;
        case 3: *reinterpret_cast< TrackingStyleConfig**>(_v) = _t->userTracking(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject Config::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_Config.data,
    qt_meta_data_Config,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *Config::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Config::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Config.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Config::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 4;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void Config::generalPolicyChanged(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
