# frozen_string_literal: true

require_relative "lib/wipe_clean/version"

Gem::Specification.new do |spec|
  spec.name = "wipe_clean"
  spec.version = WipeClean::VERSION
  spec.authors = ["Mark24"]
  spec.email = ["mark.zhangyoung@qq.com"]

  spec.summary = "Funny clear command"
  spec.description = "Make clear command more funny. Inspiration comes from `wipeClean`(JavaScript project) "
  spec.homepage = "https://github.com/Mark24Code/wipe_clean"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Mark24Code/wipe-clean"
  spec.metadata["changelog_uri"] = "https://github.com/Mark24Code/wipe-clean"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
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
