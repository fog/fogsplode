module Fogsplode
  def self.tasks(subgem)
    File.open('Rakefile', 'w') do |file|
      file.write <<-RAKEFILE
require "rubygems"
require "bundler/setup"

$stdout.sync = true
$stderr.sync = true

task_dir = File.expand_path("../tasks", __FILE__)
Dir["\#{task_dir}/**/*.rake"].each do |task_file|
  load task_file
end

desc "Default Task"
task :default => "test:travis"
RAKEFILE
    end

    Dir.mkdir 'tasks'
    File.open('tasks/bundler.rake', 'w') do |file|
      file.write <<-BUNDLER
Bundler::GemHelper.install_tasks
BUNDLER
    end
    File.open('tasks/test.rake', 'w') do |file|
      file.write <<-TEST
namespace :test do
  mock = ENV["FOG_MOCK"] || "true"
  desc "Run tests for travis"
  task :travis do
    sh("export FOG_MOCK=\#{mock} && bundle exec shindont")
  end
end
TEST
    end

    `git commit -m "[fogsplode] tasks"`
  end
end
