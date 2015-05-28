F=/Users/jima/work/rsyc_vagrant/test/test_laravel
S=/home/vagrant/test_laravel

fswatch -0 /Users/jima/work/rsyc_vagrant/test/test_laravel | while read -d "" event 
do 
    rsync --progress -avz $F/ vagrant@192.168.200.200:$S
done
