# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record_deprecate_columns/version'

Gem::Specification.new do |spec|
  spec.name          = "active_record_deprecate_columns"
  spec.version       = ActiveRecordDeprecateColumns::VERSION
  spec.authors       = ["James Hunt", "Alex Sunderland"]
  spec.email         = ["alexsunderland@notonthehighstreet.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{A gem to deprecate unused columns in ActiveRecord before removal}
  spec.homepage      = "https://github.com/notonthehighstreet/active_record_deprecate_columns"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "activerecord", "~> 4"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec_junit_formatter"
  spec.add_development_dependency "sqlite3"
end
