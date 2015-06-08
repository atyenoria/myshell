echo ""test""

TMP=`pwd`
redis-cli set temporal $TMP

redis-cli --raw get temporal 

