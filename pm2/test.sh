F=/Users/jima/work/rsyc_vagrant/test/test
S=/home/vagrant/test

fswatch -0 /Users/jima/work/rsyc_vagrant/test/test | while read -d "" event 
do 
    rsync --progress --delete -avz $F/ vagrant@192.168.200.200:$S
done
