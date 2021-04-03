require_relative 'lib/tic_tac_toe/version'

Gem::Specification.new do |spec|
  spec.name          = "tic_tac_toe"
  spec.version       = TicTacToe::VERSION
  spec.authors       = ["Waqar"]
  spec.email         = ["waqar@waqar.co"]

  spec.summary       = 'Tic Tac Toe'
  spec.description   = 'For The Odin Project'
  spec.homepage      = 'https://www.waqar.co'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/waqardm"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/waqardm"
  spec.metadata["changelog_uri"] = "https://github.com/waqardm."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
