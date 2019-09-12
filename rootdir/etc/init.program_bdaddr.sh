#!/vendor/bin/sh

btnvtool -O
btaddr=$(btnvtool -x 2>&1 | \
    awk '{split($1, mac, ""); printf("%s%s:%s%s:%s%s:%s%s:%s%s:%s%s\n", mac[1], mac[2], mac[3], mac[4], mac[5], mac[6], mac[7], mac[8], mac[9], mac[10], mac[11], mac[12]);} ')
setprop ro.boot.btmacaddr ${btaddr}
