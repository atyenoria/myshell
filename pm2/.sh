F=
S=

fswatch -0  | while read -d "" event 
do 
    rsync --progress --delete -avz $F/ vagrant@192.168.200.200:$S
done
