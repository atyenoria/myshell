#!/bin/bash
echo "ここから"
echo $1
echo $2


fswatch -0 $1 | while read -d "" event 
do 
    rsync --progress -avz $1 vagrant@192.168.200.200:$2
    #rsync --progress -avz /Users/jima/work/rsyc_vagrant/test/tes vagrant@192.168.200.200:/home/vagrant/test_des/tes
done

# ansible -i ~/host servers -a "pm2 start /Users/jima/myshell/pm2/d_rsync.sh -x"
# rsync --progress -avz . jima@172.20.10.5:/Users/jima/work/rsyc_vagrant/
# /Users/jima/myshell/pm2/d_rsync.sh