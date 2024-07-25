require_relative "lib/orders/version"

Gem::Specification.new do |spec|
  spec.name        = "lego_test_orders"
  spec.version     = Orders::VERSION
  spec.authors     = ["SujayPrabhu96"]
  spec.email       = ["prabhusujay@gmail.com"]
  # spec.homepage    = "TODO"
  spec.summary     = "Orders: Summary of Orders."
  spec.description = "Orders: Description of Orders."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = ["https://rubygems.org"]

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.4"
end
