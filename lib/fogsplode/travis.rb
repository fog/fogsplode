module Fogsplode
  def self.travis
    File.open('.travis.yml', 'w') do |file|
      file.write <<-TRAVIS
language: ruby
sudo: false
script: bundle exec rake test
matrix:
  fast_finish: true
  include:
  - rvm: 1.8.7
    gemfile: gemfiles/Gemfile-ruby-1.8.7
  - rvm: 1.9.3
    gemfile: gemfiles/Gemfile-ruby-1.9
  - rvm: 2.0.0
    gemfile: gemfiles/Gemfile-ruby-2.0
  - rvm: 2.1.1
    gemfile: Gemfile
  - rvm: 2.2.0
    gemfile: Gemfile
  - rvm: 2.3.0
    gemfile: Gemfile
  - rvm: 2.3.0
    gemfile: gemfiles/Gemfile-edge
  - rvm: jruby-18mode
    gemfile: gemfiles/Gemfile-ruby-1.8.7
  - rvm: jruby-19mode
    gemfile: gemfiles/Gemfile-ruby-1.9
  - rvm: jruby-head
    gemfile: Gemfile
  allow_failures:
    - rvm: jruby-head
notifications:
  email: false
TRAVIS
    end

    `git commit -m "[fogsplode] travis"`
  end
end
