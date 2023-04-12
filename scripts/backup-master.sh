#Backup master
pg_basebackup -D /var/lib/postgresql/slave-data -S replication_slot_slave1 -X stream -P -U replicator -Fp -R
