# logger.rb

=begin
= Logger < Object

------------------------------------------------------------------------------
= Includes:
Severity (from ~/.ri)

(from ~/.ri)
------------------------------------------------------------------------------
== Description

The Logger class in the Ruby standard library, helps write log messages to a file or stream. 
It supports time- or size-based rolling of log files. 
Messages can be assigned severities, and only those messages at or above the logger's current reporting level will be logged.

When you write code, you simply assume that all the messages will be logged. 
At runtime, you can get a more or a less verbose log by changing the log level. 
A production application usually has a log level of Logger::INFO or Logger::WARN. 
From least to most severe, the instance methods are Logger.debug, Logger.info, Logger.warn, Logger.error, and Logger.fatal.



The levels are:

FATAL:
  an unhandleable error that results in a program crash

ERROR:
  a handleable error condition

WARN:
  a warning

INFO:
  generic (useful) information about system operation

DEBUG:
  low-level information for developers


For instance, in a production system, you may have your Logger set to INFO or
even WARN When you are developing the system, however, you probably want to
know about the program's internal state, and would set the Logger to DEBUG.

Note: Logger does not escape or sanitize any messages passed to it.
Developers should be aware of when potentially malicious data (user-input) is
passed to Logger, and manually escape the untrusted data:

  logger.info("User-input: #{input.dump}")
  logger.info("User-input: %p" % input)

You can use #formatter= for escaping all data.

  original_formatter = Logger::Formatter.new
  logger.formatter = proc { |severity, datetime, progname, msg|
    original_formatter.call(severity, datetime, progname, msg.dump)
  }
  logger.info(input)

=== Example

This creates a logger to the standard output stream, with a level of WARN

  log = Logger.new(STDOUT)
  log.level = Logger::WARN

  log.debug("Created logger")
  log.info("Program started")
  log.warn("Nothing to do!")
  begin
    File.each_line(path) do |line|
      unless line =~ /^(\w+) = (.*)$/
        log.error("Line in wrong format: #{line}")
      end
    end
  rescue => err
    log.fatal("Caught exception; exiting")
    log.fatal(err)
  end

Because the Logger's level is set to WARN, only the warning, error, and fatal
messages are recorded.  The debug and info messages are silently discarded.

=== Features

There are several interesting features that Logger provides, like auto-rolling
of log files, setting the format of log messages, and specifying a program
name in conjunction with the message.  The next section shows you how to
achieve these things.

== HOWTOs

=== How to create a logger

The options below give you various choices, in more or less increasing
complexity.

1. Create a logger which logs messages to STDERR/STDOUT.

     logger = Logger.new(STDERR)
     logger = Logger.new(STDOUT)

2. Create a logger for the file which has the specified name.

     logger = Logger.new('logfile.log')

3. Create a logger for the specified file.

     file = File.open('foo.log', File::WRONLY | File::APPEND)
     # To create new (and to remove old) logfile, add File::CREAT like;
     #   file = open('foo.log', File::WRONLY | File::APPEND | File::CREAT)
     logger = Logger.new(file)

4. Create a logger which ages logfile once it reaches a certain size.  Leave
   10 "old log files" and each file is about 1,024,000 bytes.

     logger = Logger.new('foo.log', 10, 1024000)

5. Create a logger which ages logfile daily/weekly/monthly.

     logger = Logger.new('foo.log', 'daily')
     logger = Logger.new('foo.log', 'weekly')
     logger = Logger.new('foo.log', 'monthly')

=== How to log a message

Notice the different methods (fatal, error, info) being used to log messages
of various levels?  Other methods in this family are warn and debug.  add is
used below to log a message of an arbitrary (perhaps dynamic) level.

1. Message in block.

     logger.fatal { "Argument 'foo' not given." }

2. Message as a string.

     logger.error "Argument #{ @foo } mismatch."

3. With progname.

     logger.info('initialize') { "Initializing..." }

4. With severity.

     logger.add(Logger::FATAL) { 'Fatal error!' }

The block form allows you to create potentially complex log messages, but to
delay their evaluation until and unless the message is logged.  For example,
if we have the following:

  logger.debug { "This is a " + potentially + " expensive operation" }

If the logger's level is INFO or higher, no debug messages will be logged, and
the entire block will not even be evaluated.  Compare to this:

  logger.debug("This is a " + potentially + " expensive operation")

Here, the string concatenation is done every time, even if the log level is
not set to show the debug message.

=== How to close a logger

  logger.close

=== Setting severity threshold

1. Original interface.

     logger.sev_threshold = Logger::WARN

2. Log4r (somewhat) compatible interface.

     logger.level = Logger::INFO

     DEBUG < INFO < WARN < ERROR < FATAL < UNKNOWN

== Format

Log messages are rendered in the output stream in a certain format by default.
 The default format and a sample are shown below:

Log format:
  SeverityID, [Date Time mSec #pid] SeverityLabel -- ProgName: message

Log sample:
  I, [Wed Mar 03 02:34:24 JST 1999 895701 #19074]  INFO -- Main: info.

You may change the date and time format via #datetime_format=

  logger.datetime_format = "%Y-%m-%d %H:%M:%S"
        # e.g. "2004-01-03 00:54:26"

Or, you may change the overall format with #formatter= method.

  logger.formatter = proc do |severity, datetime, progname, msg|
    "#{datetime}: #{msg}\n"
 end
  # e.g. "Thu Sep 22 08:51:08 GMT+9:00 2005: hello world"
------------------------------------------------------------------------------
= Constants:

ProgName:
  [not documented]

SEV_LABEL:
  Severity label for logging. (max 5 char)

VERSION:
  [not documented]


= Class methods:

  new

= Instance methods:

  <<, add, close, datetime_format, datetime_format=, debug, debug?, error,
  error?, fatal, fatal?, formatter, info, info?, level, log, progname,
  sev_threshold, sev_threshold=, unknown, warn, warn?

= Attributes:

  attr_accessor formatter, attr_accessor level, attr_accessor progname,
  attr_accessor sev_threshold, attr_accessor sev_threshold=

------------------------------------------------------------------------------
Also found in:
  gem activesupport-3.2.6



=end
