module Fogsplode
  def self.gemfiles(subgem)
    Dir.mkdir('gemfiles')

    File.open('gemfiles/Gemfile-ruby-1.8.7', 'w') do |file|
      file.write <<-GEMFILE
source "https://rubygems.org"

gem 'mime-types', '~> 1.16'
gem 'nokogiri', '~> 1.5.11'

gemspec :path => "../"
GEMFILE
    end

    File.open('gemfiles/Gemfile-ruby-1.9', 'w') do |file|
      file.write <<-GEMFILE
source "https://rubygems.org"

gem 'json', '~> 1.8'
gem 'mime-types', '~> 2.6', '>= 2.6.2'
gem 'nokogiri', '~> 1.6.8'

gemspec :path => "../"
GEMFILE
    end

    File.open('gemfiles/Gemfile-ruby-2.0', 'w') do |file|
      file.write <<-GEMFILE
source "https://rubygems.org"

gem 'mime-types', '~> 3.1'
gem 'nokogiri', '~> 1.6.8'

gemspec :path => "../"
GEMFILE
    end
    File.open('gemfiles/Gemfile-edge', 'w') do |file|
      file.write <<-GEMFILE
source "https://rubygems.org"

gem 'mime-types', '~> 3.1'
gem 'nokogiri', '~> 1.6.8'

gem "fog-core", :github => "fog/fog-core"
# gem "fog-json", :github => "fog/fog-json"
# gem "fog-xml", :github => "fog/fog-xml"

gemspec :path => "../"
GEMFILE
  end

    `git commit -m "[fogsplode] gemfiles"`
  end
end
