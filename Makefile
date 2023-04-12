start-master:
	docker-compose up -d  postgres_master 


config-master:
	docker exec -it postgres_master sh /etc/postgresql/scripts/config-master.sh
	docker restart postgres_master


create-replication-user:
	docker exec -it postgres_master sh /etc/postgresql/scripts/create-replica-user.sh

backup-master:
	docker exec -it postgres_master sh /etc/postgresql/scripts/backup-master.sh


start-slave:
	docker-compose up -d  postgres_slave
