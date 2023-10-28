# frozen_string_literal: true

require_relative "lib/railwind/version"

Gem::Specification.new do |spec|
  spec.name = "railwind"
  spec.version = Railwind::VERSION
  spec.authors = ["Christian Bryant"]
  spec.email = ["hi@christianlovescode.com"]

  spec.summary = "a customizeable ViewComponent UI library baked with Tailwind CSS."
  spec.description = "Railwind is a customizable ViewComponent UI library that leverages the power of Tailwind CSS. It provides a set of reusable and configurable UI components that can be easily integrated into any Rails application. With Railwind, developers can rapidly build beautiful and responsive user interfaces with less effort and time."
  spec.homepage = "https://github.com/christianlovescode/railwind"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  # spec.metadata["allowed_push_host"] = "https://christianbryant.dev"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/christianlovescode/railwind"
  spec.metadata["changelog_uri"] = "https://github.com/christianlovescode/railwind"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 7.0"
  spec.add_dependency "view_component", "~> 3.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
