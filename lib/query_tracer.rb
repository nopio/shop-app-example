module QueryTracer
# http://blog.pablobm.com/post/13819923571/activerecord-backtrace-sql-queries

  CLEAR = ActiveSupport::LogSubscriber::CLEAR
  BOLD = ActiveSupport::LogSubscriber::BOLD

  def self.start!
    ActiveSupport::Notifications.subscribe('sql.active_record') do |*args|
      QueryTracer.publish(*args)
    end
  end

  def self.publish(name, started, ended, id, payload)
    name = payload[:name]
    sql = payload[:sql]

    ActiveRecord::Base.logger.debug "#{BOLD} TRACE: #{sql}#{CLEAR}"
    clean_trace.each do |line|
      ActiveRecord::Base.logger.debug "  #{line}"
    end
  end

  def self.clean_trace
    Rails.backtrace_cleaner.clean(caller[2..-1])
  end

end

QueryTracer.start!