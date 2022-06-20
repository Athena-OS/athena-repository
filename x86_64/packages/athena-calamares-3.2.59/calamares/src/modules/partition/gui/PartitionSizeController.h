/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2014 Aurélien Gâteau <agateau@kde.org>
 *   SPDX-FileCopyrightText: 2016 Teo Mrnjavac <teo@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */

#ifndef PARTITIONSIZECONTROLLER_H
#define PARTITIONSIZECONTROLLER_H

// KPMcore
#include <kpmcore/core/partition.h>

// Qt
#include <QColor>
#include <QObject>
#include <QPointer>
#include <QScopedPointer>

class QSpinBox;

class Device;
class Partition;
class PartResizerWidget;

/**
 * Synchronizes a PartResizerWidget and a QSpinBox, making sure any change made
 * to one is reflected in the other.
 *
 * It does not touch the partition it works on: changes are exposed through the
 * firstSector() and lastSector() getters.
 */
class PartitionSizeController : public QObject
{
    Q_OBJECT
public:
    explicit PartitionSizeController( QObject* parent = nullptr );
    void init( Device* device, Partition* partition, const QColor& color );
    void setPartResizerWidget( PartResizerWidget* widget, bool format = true );
    void setSpinBox( QSpinBox* spinBox );

    qint64 firstSector() const;
    qint64 lastSector() const;

    bool isDirty() const;

private:
    QPointer< PartResizerWidget > m_partResizerWidget;
    QPointer< QSpinBox > m_spinBox;
    Device* m_device = nullptr;
    const Partition* m_originalPartition = nullptr;
    QScopedPointer< Partition > m_partition;
    QColor m_partitionColor;

    bool m_updating = false;

    void connectWidgets();
    void doUpdateSpinBox();
    void doAlignAndUpdatePartResizerWidget( qint64 fistSector, qint64 lastSector );

    bool m_dirty = false;
    qint64 m_currentSpinBoxValue = -1;

private Q_SLOTS:
    void updatePartResizerWidget();
    void updateSpinBox();
};

#endif /* PARTITIONSIZECONTROLLER_H */
