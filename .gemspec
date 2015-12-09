Gem::Specification.new do |spec|
  spec.name                  = 'openbel-api'
  spec.version               = '0.2.0'
  spec.summary               = %q{The OpenBEL API provided over RESTful HTTP endpoints.}
  spec.description           = %q{The OpenBEL API provides a RESTful API over HTTP to manage BEL knowledge.}
  spec.license               = 'Apache-2.0'
  spec.authors               = [
                                 'Anthony Bargnesi',
                                 'Nick Bargnesi',
                                 'William Hayes'
                               ]
  spec.date                  = %q{2015-12-02}
  spec.email                 = %q{abargnesi@selventa.com}
  spec.files                 = [
                                 Dir.glob('app/**/*.{json,rb,ru}'),
                                 Dir.glob('config/**/*.rb'),
                                 Dir.glob('lib/**/*.rb'),
                                 __FILE__,
                                 'CHANGELOG.md',
                                 'LICENSE',
                                 'INSTALL.md',
                                 'INSTALL_RUBY.md',
                                 'README.md'
                               ].flatten!
  spec.executables           = Dir.glob('bin/*').map(&File.method(:basename))
  spec.homepage              = 'https://github.com/OpenBEL/openbel-server'
  spec.require_paths         = ['app', 'lib']
  spec.platform              = 'java'
  spec.required_ruby_version = '>= 2.0.0'

  # Dependencies

  ## bel.rb
  spec.add_runtime_dependency 'bel',               '~> 0.4.0.beta'

  ## bel.rb plugin - annotation/namespace search
  spec.add_runtime_dependency 'bel-search-sqlite', '~> 0.4.0.beta'

  ## bel.rb plugin - RDF repository using Apache Jena
  spec.add_runtime_dependency 'bel-rdf-jena',      '~> 0.4.0.beta'

  ## RDF - RDF abstraction
  spec.add_runtime_dependency 'rdf',               '1.99.0'

  ## Mongo - Faceted search of evidence.
  spec.add_runtime_dependency 'mongo',             '1.12.5'
  spec.add_runtime_dependency 'bson',              '1.12.5'

  ## REST API dependencies
  spec.add_runtime_dependency 'jrjackson',         '0.3.7'
  spec.add_runtime_dependency 'json_schema',       '0.10.0'
  spec.add_runtime_dependency 'multi_json',        '1.11.2'
  spec.add_runtime_dependency 'oat',               '0.4.6'
  spec.add_runtime_dependency 'puma',              '2.15.3'
  spec.add_runtime_dependency 'rack',              '1.6.4'
  spec.add_runtime_dependency 'rack-cors',         '0.4.0'
  spec.add_runtime_dependency 'rack-handlers',     '0.7.0'
  spec.add_runtime_dependency 'sinatra',           '1.4.6'
end
# vim: ts=2 sw=2:
# encoding: utf-8
