pgrep  -u "$(whoami)" -xf "python ./submit_run.py 1" > /dev/null || (. ./initpipe36.sh ; date >> $PATH_LOG/pipe_manager_submit.log ; cd $PIPEMANAGER >> $PATH_LOG/pipe_manager_submit.log ; echo $PIPEMANAGER >>  $PATH_LOG/pipe_manager_submit.log  ; python ./submit_run.py 1 >> $PATH_LOG/pipe_manager_submit.log )

