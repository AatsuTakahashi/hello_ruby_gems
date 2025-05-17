# frozen_string_literal: true

require_relative "lib/hello_ruby_gems/version"

Gem::Specification.new do |spec|
  spec.name = "hello_ruby_gems"
  spec.version = HelloRubyGems::VERSION
  spec.authors = ["Takahashi Aatsu"]
  spec.email = []

  spec.summary = "A simple Ruby gem that greets you"
  spec.description = "HelloRubyGems is a tiny gem that provides a method to greet people. Ideal for learning how to build and publish Ruby gems."
  spec.homepage = "https://github.com/takahashi-aatsu/hello_ruby_gems"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/AatsuTakahashi/hello_ruby_gems"
  spec.metadata["changelog_uri"] = "https://github.com/AatsuTakahashi/hello_ruby_gems/blob/develop/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
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
