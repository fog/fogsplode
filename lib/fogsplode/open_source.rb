module Fogsplode
  def self.open_source(subgem)
    require 'osrcry'
    Osrcry::Contributing.execute
    Osrcry::Contributors.execute
    Osrcry::License.execute

    `git commit -m "[fogsplode] open_source"`
  end
end
