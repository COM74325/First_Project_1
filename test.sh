#! /bin/bash

ps -ef | grep ora_pmon | grep -v grep | awk '{print $2}'
echo ------------------------------------------

pid=`ps -ef | grep ora_pmon | grep -v grep | awk '{print $2}'`
echo ------------------------------------------

export ORACLE_SID={SID}
export ORACLE_HOME={ORACLE_HOME}
export PATH=$ORACLE_HOME/bin:$PATH
expdp system/password directory=DATA_PUMP_DIR dumpfile=backup.dmp logfile=backup.log