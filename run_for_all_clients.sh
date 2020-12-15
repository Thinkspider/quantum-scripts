#!/bin/bash
clients="
adient
adp
ameren
amgen
amwater
bd
clarios
conocophillips
cvs
genentech
hartford
hhmi
ironmountain
jci
lumen
magellanhealth
msd
northbound
riverscasino
siemens

teva
vwr
walmart
yfai
kohls
"
export PATH="/home/ubuntu/.local/bin/:$PATH"
for client in ${clients}; do
        echo "******************************************************************************"
        echo "Running instance :  ${client}"
        echo "=============================================================================="
        cd /app/workspace/${client}
        $@ ${client} 
        echo "******************************************************************************"
done

