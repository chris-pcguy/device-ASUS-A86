#!/vendor/bin/sh

btnvtool -O
#btaddr=$(btnvtool -x 2>&1 | \
#    awk '{split($1, mac, ""); printf("%s%s:%s%s:%s%s:%s%s:%s%s:%s%s\n", mac[1], mac[2], mac[3], mac[4], mac[5], mac[6], mac[7], mac[8], mac[9], mac[10], mac[11], mac[12]);} ')
# Convert '11.22.33.44.55.66' to '66:55:44:33:22:11'
# btnvtool -p short option doesn't work
btaddr=$(btnvtool --print-all-nv 2>&1 | \
    awk '/--board-address/ {split($2, mac, "."); for (i=1;i<=6;i++) {if (length(mac[i]) == 1) mac[i] = "0" mac[i]; }; printf("%s:%s:%s:%s:%s:%s\n", mac[6], mac[5], mac[4], mac[3], mac[2], mac[1]);} ')
setprop ro.boot.btmacaddr ${btaddr}
setprop persist.service.bdroid.bdaddr ${btaddr}

ASUS_INI_FILE=/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini
ASUS_NV_FILE=/system/etc/firmware/wlan/prima/wifi.nv
ASUS_COUNTRY_FILE=/system/etc/firmware/wlan/prima/COUNTRY

if [ -f $ASUS_INI_FILE -a -f $ASUS_NV_FILE -a -f $ASUS_COUNTRY_FILE ]; then
    ASUS_MACADDRESS0=`grep MacAddress0 $ASUS_NV_FILE | sed "s/MacAddress0=\(.*\)/\1/g"`
    ASUS_MACADDRESS1=`grep MacAddress1 $ASUS_NV_FILE | sed "s/MacAddress1=\(.*\)/\1/g"`
    ASUS_MACADDRESS2=`grep MacAddress2 $ASUS_NV_FILE | sed "s/MacAddress2=\(.*\)/\1/g"`
    ASUS_MACADDRESS3=`grep MacAddress3 $ASUS_NV_FILE | sed "s/MacAddress3=\(.*\)/\1/g"`
    #ASUS_REGDOMAIN=0 # is zero in my file and the kernel module's default value is zero too.
    ASUS_COUNTRY=`cat $ASUS_COUNTRY_FILE`
    mount -o remount,rw /system
    sed -i "s/#*\(gAPCntryCode=\).*/\1$ASUS_COUNTRY/g" $ASUS_INI_FILE # questionmark and plus-sign don't work with sed from toybox
    sed -i -e "s/\(Intf0MacAddress=\).*/\1$ASUS_MACADDRESS0/g" -e "s/\(Intf1MacAddress=\).*/\1$ASUS_MACADDRESS1/g" -e "s/\(Intf2MacAddress=\).*/\1$ASUS_MACADDRESS2/g" -e "s/\(Intf3MacAddress=\).*/\1$ASUS_MACADDRESS3/g" $ASUS_INI_FILE
    mount -o remount,ro /system
fi

