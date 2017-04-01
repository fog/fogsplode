module Fogsplode
  def self.tasks
    File.open('README.md', 'w') do |file|
      file.write <<-RAKEFILE
require "rubygems"
require "bundler/setup"

# Immediately sync all stdout so that tools like buildbot can
# immediately load in the output.
$stdout.sync = true
$stderr.sync = true

task_dir = File.expand_path("../tasks", __FILE__)
Dir["#{task_dir}/**/*.rake"].each do |task_file|
  load task_file
end

desc "Default Task"
task :default => "test:travis"
RAKEFILE
    end

    `git commit -m "[fogsplode] tasks"
  end
end
