F=/Users/jima/work/rsyc_vagrant/test/.shell
S=/home/vagrant/.shell

fswatch -0 /Users/jima/work/rsyc_vagrant/test/.shell | while read -d "" event 
do 
    rsync --progress -avz $F/ vagrant@192.168.200.200:$S
done
