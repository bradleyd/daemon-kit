task :environment do
  $daemon_kit_rake_task = true

  begin
    # require statements for ruby < 1.9.1:
    require 'config/environment'
  rescue LoadError
    # require for statements for ruby > 1.9.1
    require './config/environment'
  end
  DaemonKit::Application.running!
end

task "Execute system commands in other tasks with sudo"
task :sudo do
  $RAKE_USE_SUDO = true
end
