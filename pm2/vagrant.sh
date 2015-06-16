F=/Users/jima/work/rsyc_vagrant/test/vagrant
S=/home/vagrant

fswatch -0 /Users/jima/work/rsyc_vagrant/test/vagrant | while read -d "" event 
do 
    rsync --progress --delete -avz $F/ vagrant@192.168.200.200:$S
done

 rsync --progress --delete -avz /Users/jima/work/rsyc_vagrant/test/vagrant/ vagrant@192.168.200.200:/home/vagrant