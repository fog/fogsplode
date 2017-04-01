module Fogsplode
  def self.init(subgem)
    `bundle gem #{subgem}`
    Dir.chdir(subgem)

    `git remote add origin git@github.com:fog/#{subgem}.git`

    `git commit -m "[fogsplode] init"`
  end
end
