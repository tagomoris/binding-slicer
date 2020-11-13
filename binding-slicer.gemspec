Gem::Specification.new do |spec|
  spec.name          = "binding-slicer"
  spec.version       = "0.2.0"
  spec.authors       = ["TAGOMORI Satoshi"]
  spec.email         = ["tagomoris@gmail.com"]

  spec.summary       = %q{Let you write binding[:a, :b, :c] => Hash}
  spec.description   = %q{Introduce a method to get a slice Hash of the current binding.}
  spec.homepage      = "https://github.com/tagomoris/binding-slicer"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]
end
