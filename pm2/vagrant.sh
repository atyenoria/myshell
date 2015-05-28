F=/Users/jima/work/rsyc_vagrant/test/vagrant
S=/home/vagrant

fswatch -0 /Users/jima/work/rsyc_vagrant/test/vagrant | while read -d "" event 
do 
    rsync --progress -avz $F/ vagrant@192.168.200.200:$S
done


#rsync --progress -avz /Users/jima/work/rsyc_vagrant/test/vagrant/ vagrant@192.168.200.200:/home/vagrant