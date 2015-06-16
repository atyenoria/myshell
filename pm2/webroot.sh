F=/Users/jima/work/rsyc_vagrant/test/webroot
S=/home/vagrant/webroot

fswatch -0 /Users/jima/work/rsyc_vagrant/test/webroot | while read -d "" event 
do 
    rsync --progress --delete -avz $F/ vagrant@192.168.200.200:$S
done
