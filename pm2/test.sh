F=/Users/jima/work/rsyc_vagrant/test/
S=

fswatch -0 /Users/jima/work/rsyc_vagrant/test/ | while read -d "" event 
do 
    rsync --progress -avz $F/ vagrant@192.168.200.200:$S
done
