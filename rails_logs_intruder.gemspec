# frozen_string_literal: true

require_relative "lib/rails_logs_intruder/version"

Gem::Specification.new do |spec|
  spec.name = "rails_logs_intruder"
  spec.version = RailsLogsIntruder::VERSION
  spec.authors = ["Mykola Litynskyi"]
  spec.email = ["udevedu@skiff.com"]

  spec.summary = "Gem that outputs your text into Rails logs"
  spec.homepage = "https://github.com/linxola/rails-logs-intruder"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/linxola/rails-logs-intruder"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end