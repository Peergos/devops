# database
## postgres
### [daily file-system level backups](https://www.postgresql.org/docs/9.1/backup-file.html)
* cron jobs
* rotate last ~10 days or exponential back-off
### [continuous intra-day backups w/ write-ahead-log](https://www.postgresql.org/docs/9.3/continuous-archiving.html)
* last-day only
### *not* master-master
* quite hard to start with
    * accept  down-time if db-server crashes while new one spins up
* have  script to setup  new postgres instance
    * using latest daily backup
    * apply WAL log from intraday
    * *practise doing this*
    * re-use ip-address or push new db-endpoint to peergos-config and restart them

# monitoring
## host monitoring w/ [munin](http://guide.munin-monitoring.org/en/latest/tutorial/getting-started.html)
* prometheus client?
* memory/cpu/network
## prometheus for aggregagation
### prometheus clients
* peergos-instance
* pki-server
* postgres-server
### prometheus push-gateway for jobs
* database backup jobs
* WAL backup job
* login/read/write/share canary?
## peergos app. 
## grafana dashboards
## alert-manager
* setup email notificaation when:
    * DB instance unavailable
    * pki unavailable
    * _any_ peergos/ipfs unavailable
    * canary P2P stream fails
    * daily postgres DB backup fails
    * WAL archiving fails


# SSL
* certbot on a different port
