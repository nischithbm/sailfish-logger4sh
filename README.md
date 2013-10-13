sailfish-logger4sh
==================

sailfish-logger4sh is a lightweight library used to simplify log generation in shell scripts.

Configuration
-------------

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

Loading logger4sh
--------------------------
You can load the logger4sh by calling the source file from your script

    source logger4sh
    # or 
    . logger4sh
    
Using logger4sh functions
---------------------------
    log_fatal "Your Fatal message here"
    log_error "Your Error message here"
    log_warn "Your Warning message here"
    log_info "Your Info message here"
    log_debug "Your Debug message here"
    log_trace "Your Trace message here"

Customization 
-------------
Once you load logger4sh by calling the source file from your script, <br />
it will be initialized to the default configuration, which is specified above.<br />

If you want to override the default configurations.<br />
Say you want to change the LOG_LEVEL to INFO

    # Load the source file
    source logger4sh

    # Customize the logger
    LOG_LEVEL=INFO
    
    # Initialize the logger with new configuration
    init_logger



<br />
<div class="footer">
   Happy Logging :-) &copy; 2012 Nischith B.M.
</div>
