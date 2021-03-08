# frozen_string_literal: true

require_relative "lib/tech_news_usa/version"

Gem::Specification.new do |spec|
  spec.name          = "tech_news_usa"
  spec.version       = TechNewsUsa::VERSION
  spec.authors       = ["Jonathan Block"]
  spec.email         = ["blockjonathan29@gmail.com"]

  spec.summary       = "TODO: Write a short summary, because RubyGems requires one."
  spec.description   = "TODO: Write a longer description or delete this line."
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #Uncomment to register a new dependency of your gem
   spec.add_dependency "httparty",  "~> 0.18.1"
   spec.add_dependency "pry", "~> 0.14.0"
   spec.add_development_dependency "dotenv", "~> 2.7.6"
   spec.add_dependency "rake", "~> 13.0"
   spec.add_dependency "rubocop", "~> 0.80"
   spec.add_dependency 'iso_country_codes', '~> 0.7.8'



  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
