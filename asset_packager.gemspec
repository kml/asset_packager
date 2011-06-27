# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{asset_packager}
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dieinzige"]
  s.date = %q{2010-03-16}
  s.description = %q{Minify for rails js and css}
  s.email = %q{dieinzige@gmail.com}
  s.extra_rdoc_files = ["README"]
  s.files = Dir["#{File.dirname(__FILE__)}/**/*"]
  s.homepage = %q{http://github.com/Dieinzige/asset_packager}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Packager for rails js and css}
  s.test_files = ["test/asset_package_helper_development_test.rb", "test/asset_package_helper_production_test.rb", "test/asset_packager_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  end

  # Google V8 embedded within Ruby
  s.add_dependency(%q<therubyracer>, [">= 0"])
  # Ruby wrapper for UglifyJS JavaScript compressor.
  s.add_dependency(%q<uglifier>, [">= 0"])
end

