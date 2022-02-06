killall pgbouncer 
git fetch
git pull
git checkout -- src/client.c
patch -u src/client.c -i prepare_commit.patch
make
./pgbouncer -d pgbouncer.ini
