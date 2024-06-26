#include "systemcontroller.h"

SystemController::SystemController(QObject *parent)
    : QObject{parent}
    , m_currentSystemTemperature( 65 )
    , m_targetTemp( 70 )
    , m_systemStatusMessage( "Foobar...")
    , m_systemState( HEATING )
{


}

int SystemController::currentSystemTemperature() const
{
    return m_currentSystemTemperature;
}

void SystemController::setCurrentSystemTemperature(int newCurrentSystemTemperature)
{
    if (m_currentSystemTemperature == newCurrentSystemTemperature)
        return;
    m_currentSystemTemperature = newCurrentSystemTemperature;
    emit currentSystemTemperatureChanged();
}

int SystemController::targetTemp() const
{
    return m_targetTemp;
}

void SystemController::setTargetTemp(int newTargetTemp)
{
    if (m_targetTemp == newTargetTemp)
        return;
    m_targetTemp = newTargetTemp;
    emit targetTempChanged();
    checkSystemStatus();
}

QString SystemController::systemStatusMessage() const
{
    return m_systemStatusMessage;
}

void SystemController::setSystemStatusMessage(const QString &newSystemStatusMessage)
{
    if (m_systemStatusMessage == newSystemStatusMessage)
        return;
    m_systemStatusMessage = newSystemStatusMessage;
    emit systemStatusMessageChanged();
}

SystemController::HeatSelectState SystemController::systemState() const
{
    return m_systemState;
}

void SystemController::setSystemState(HeatSelectState newSystemState)
{
    if (m_systemState == newSystemState)
        return;
    m_systemState = newSystemState;
    emit systemStateChanged();
    checkSystemStatus();
}

void SystemController::checkSystemStatus()
{
    if ( (m_currentSystemTemperature < m_targetTemp) && (m_systemState == HEATING) )
        setSystemStatusMessage("Heating...");
    else if ( (m_currentSystemTemperature > m_targetTemp) && (m_systemState == COOLING) )
        setSystemStatusMessage("Cooling...");
    else
        setSystemStatusMessage("Holding...");
}
