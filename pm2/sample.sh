F=/Users/jima/work/rsyc_vagrant/test/sample
S=/home/vagrant/.shell/sample

fswatch -0 /Users/jima/work/rsyc_vagrant/test/sample | while read -d "" event 
do 
    rsync --progress -avz $F/ vagrant@192.168.200.200:$S
done
