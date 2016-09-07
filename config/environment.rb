require_relative 'application'
Rails.application.initialize!

# original_formatter = Logger::Formatter.new
# Rails.logger.formatter = proc { |severity, datetime, progname, msg|
#   original_formatter.call(severity, datetime, progname, msg.dump)
# }

Rails.logger.debug("Logger created")
Rails.logger.info("Program started")
Rails.logger.warn("Nothing to do")

begin
  rescue => err
    Rails.logger.fatal("Caught exception; exiting")
    Rails.logger.fatal(err)
end