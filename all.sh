ls | grep ubuntu |sort -r |while read line ; do pushd $line;bash build.sh; bash push.sh;popd;done
