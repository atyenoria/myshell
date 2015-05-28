F=/Users/jima/work/rsyc_vagrant/test/nginx
S=/etc/nginx

fswatch -0 /Users/jima/work/rsyc_vagrant/test/nginx | while read -d "" event 
do 
    rsync --progress -avz $F/ vagrant@192.168.200.200:$S
done

#rsync --progress -avz /Users/jima/work/rsyc_vagrant/test/nginx/ vagrant@192.168.200.200:S=/etc/nginx
rsync --progress -avz /Users/jima/work/rsyc_vagrant/test/nginx/ 192.168.200.200:S=/etc/nginx

#リモートのパーミション？？
#sudo rsync -avz -e ssh --rsync-path='SUDO_ASKPASS=/home/remote-user/bin/askpass sudo -A rsync' vagrant@192.168.200.200:/etc/nginx /Users/jima/work/rsyc_vagrant/test/nginx/

#rsync -R -avz -e ssh --rsync-path="echo mypassword | sudo -S  mkdir -p /etc/nginx && sudo rsync" /Users/jima/work/rsyc_vagrant/test/nginx/ vagrant@192.168.200.200:/etc/nginx 