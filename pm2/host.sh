F=/Users/jima/work/rsyc_vagrant/test/host
S=/home/vagrant/host

fswatch -0 /Users/jima/work/rsyc_vagrant/test/host | while read -d "" event 
/do 
    rsync --progress -avz $F/ vagrant@192.168.200.200:$S
done
