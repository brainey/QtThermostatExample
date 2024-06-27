#ifndef SYSTEMCONTROLLER_H
#define SYSTEMCONTROLLER_H

#include <QObject>

class SystemController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int currentSystemTemperature READ currentSystemTemperature WRITE setCurrentSystemTemperature NOTIFY  currentSystemTemperatureChanged FINAL)
    Q_PROPERTY(int targetTemp READ targetTemp WRITE setTargetTemp NOTIFY targetTempChanged)
    Q_PROPERTY(QString systemStatusMessage READ systemStatusMessage WRITE setSystemStatusMessage NOTIFY systemStatusMessageChanged)
    Q_PROPERTY(HeatSelectState systemState READ systemState WRITE setSystemState NOTIFY systemStateChanged FINAL)
public:
    explicit SystemController(QObject *parent = nullptr);

    enum HeatSelectState {
        OFF,
        HEATING,
        COOLING,
        AUTO
    };
    Q_ENUM(HeatSelectState)

    int currentSystemTemperature() const;
    void setCurrentSystemTemperature(int newCurrentSystemTemperature);

    int targetTemp() const;
    void setTargetTemp(int newTargetTemp);

    QString systemStatusMessage() const;
    void setSystemStatusMessage(const QString &newSystemStatusMessage);

    HeatSelectState systemState() const;
    void setSystemState(HeatSelectState newSystemState);

signals:
    void currentSystemTemperatureChanged();
    void targetTempChanged();
    void systemStatusMessageChanged();
    void systemStateChanged();

private:
    void checkSystemStatus();
    int m_currentSystemTemperature;
    int m_targetTemp;
    QString m_systemStatusMessage;
    HeatSelectState m_systemState;
};

#endif // SYSTEMCONTROLLER_H
