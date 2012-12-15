#!/bin/bash

#################################################################################################
# Default Configuration
#################################################################################################
LOG_PATH="."
LOG_FILE="logfile.log"
LOG_LEVEL=INFO
LOG_DATE_FORMAT="%Y-%m-%d %H:%M:%S"
LOG_MESSAGE_FORMAT="[ %-19s ] - [ %-5s ] - %s\n"
#################################################################################################

function init_logger(){
    if [ "$LOG_LEVEL" = "FATAL" ]; then
        LOG_LEVELS_ENABLED=( "<FATAL>" )
    elif [ "$LOG_LEVEL" = "ERROR" ]; then
        LOG_LEVELS_ENABLED=( "<ERROR>" "<FATAL>" )
    elif [ "$LOG_LEVEL" = "WARN" ]; then
        LOG_LEVELS_ENABLED=( "<WARN>" "<ERROR>" "<FATAL>" )
    elif [ "$LOG_LEVEL" = "INFO" ]; then
        LOG_LEVELS_ENABLED=( "<INFO>" "<WARN>" "<ERROR>" "<FATAL>" )
    elif [ "$LOG_LEVEL" = "DEBUG" ]; then
        LOG_LEVELS_ENABLED=( "<DEBUG>" "<INFO>" "<WARN>" "<ERROR>" "<FATAL>" )
    elif [ "$LOG_LEVEL" = "TRACE" ]; then
        LOG_LEVELS_ENABLED=( "<TRACE>" "<DEBUG>" "<INFO>" "<WARN>" "<ERROR>" "<FATAL>" )
    fi
}

#################################################################################################
# Logger functions
#################################################################################################
function log_fatal(){
    do_log FATAL $1; shift
}

function log_error(){
    do_log ERROR $1; shift
}

function log_warn(){
    do_log WARN $1; shift
}

function log_info(){
    do_log INFO $1; shift
}

function log_debug(){
    do_log DEBUG $1; shift
}

function log_trace(){
    do_log TRACE $1; shift
}


#################################################################################################
# do_log function should not be called directly. 
#################################################################################################
function do_log(){
    local LOG_SEVERITY=$1; shift

    local isEnabled_l=`echo ${LOG_LEVELS_ENABLED[@]} | grep "<$LOG_SEVERITY>"`

    if [ "${isEnabled_l}" != "" ]; then
        local date_time_l=$(date +"$LOG_DATE_FORMAT")
        printf "$LOG_MESSAGE_FORMAT" "$date_time_l" "$LOG_SEVERITY" "$*" >> $LOG_PATH/$LOG_FILE
    fi
}

#################################################################################################
# init_logger function may be called to reinitialse the logger for customising the logger 
#################################################################################################
init_logger
