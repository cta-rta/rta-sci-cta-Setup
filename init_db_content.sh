PWD=$1

cd ./pipeline_manager/database
mysql -urt --password=$1 pipe_manager  < pipe_manager_db.sql
mysql -urt --password=$1 cta_pipe_db  < pipe-db-schema.sql
mysql -urt --password=$1 cta_pipe_db  < import_source.sql
mysql -urt --password=$1 cta_pipe_db < event_update_job_status.sql
cd ../../CTAGammaPipeCommon/database
mysql -urt --password=$1 cta_pipe_db  < import_ring.sql
cd ../../database
mysql -urt --password=$1 cta_pipe_db  < init_database_pipe.sql
mysql -urt --password=$1 cta_results_db < cta_results_db.sql
mysql -urt --password=$1 evt_db < evt_schema.sql
cd ../CTAGammaPipeCommon/database
mysql -urt --password=$1 evt_db  < stream_data.sql
