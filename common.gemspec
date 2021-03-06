$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "common/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "common"
  spec.version     = Common::VERSION
  spec.authors     = ["Andrew Cetinic"]
  spec.email       = ["acetinick@gmail.com"]
  spec.homepage    = "https://cml.pm"
  spec.summary     = "Common modules"
  spec.description = "Common modules"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"
  spec.add_dependency "sidekiq", "6.0.4"
  spec.add_dependency "liquid", "4.0.3"
  spec.add_dependency "pagy", "3.7.1"
  spec.add_dependency "pg", "1.2.0"

  spec.add_development_dependency "sqlite3"
end
