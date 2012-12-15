bash-logger
===========

bash-logger is a lightweight library used to simplify log generation in shell scripts.
---------------------------------------
Configuration
-------------
---------------------------------------

Default Values

    LOG_PATH="."
    LOG_FILE="logfile.log"
    LOG_LEVEL=INFO
    LOG_DATE_FORMAT="%Y-%m-%d %H:%M:%S"
    LOG_MESSAGE_FORMAT="[ %-19s ] - [ %-5s ] - %s\n"

LOG_LEVEL

    FATAL
    ERROR
    WARN
    INFO
    DEBUG
    TRACE

Loading bash-logger

You can load the bash-logger by calling the source file from your script
    source bash-logger.sh
    
    # or 
    
    . bash-logger.sh
    
Using bash-logger functions

    log_fatal "Your Fatal message here"
    log_error "Your Error message here"
    log_warning "Your Warning message here"
    log_info "Your Info message here"
    log_debug "Your Debug message here"
    log_trace "Your Trace message here"


Customization 

Once you load bash-logger by calling the source file from your script, <br />
it will be initialized to the default configuration, which is specified above.<br />

If you want to override the default configurations. Say you want to change the LOG_LEVEL to INFO

    # Load the source file
    source bash-logger.sh

    # Customize the logger
    LOG_LEVEL=INFO
    
    # Initialize the logger with new configuration
    init_logger




Happy Logging :-)




<div class="footer">
    &copy; 2012 Nischith B.M.
</div>
