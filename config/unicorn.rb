worker_processes Integer(ENV["WEB_CONCURRENCY"] || 2)
timeout 15
preload_app true

if ENV["UNICORN_SOCKET"]
  listen File.expand_path(ENV["UNICORN_SOCKET"])
end

before_fork do |server, worker|
  Signal.trap "TERM" do
    puts "Unicorn master intercepting TERM and sending myself QUIT"
    Process.kill "QUIT", Process.pid
  end

  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
  end
end

after_fork do |server, worker|
  Signal.trap "TERM" do
    puts "Unicorn worker intercepting TERM and doing nothing. Waiting for master to send QUIT"
  end

  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
  end
end
