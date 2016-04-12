# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'solidus_print_invoice/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_print_invoice'
  s.version     = SolidusPrintInvoice.version
  s.summary     = 'Print invoices and slips from Solidus Commerce'
  s.description = s.summary
  s.required_ruby_version = '>= 1.8.7'

  s.authors      = ['Spree Commerce', 'Tobias Bohwalli', 'Martin Meyerhoff', 'Mohammed Gharbi']
  s.email        = ['gems@spreecommerce.com', 'mgharbik@gmail.com']
  s.homepage     = 'https://github.com/simo163/spree_print_invoice'
  s.license      = 'BSD-3'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  solidus_version = ['>= 1.1.0.alpha', '< 2']

  s.add_runtime_dependency 'solidus_core', solidus_version
  s.add_runtime_dependency 'prawn-rails', '~> 0.1.1'

  s.add_development_dependency 'capybara', '~> 2.4.4'
  s.add_development_dependency 'poltergeist', '~> 1.5'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'rspec-rails', '~> 3.3.0'
  s.add_development_dependency 'simplecov', '~> 0.10.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.10'
  s.add_development_dependency 'database_cleaner', '~> 1.4.0'
  s.add_development_dependency 'coffee-rails', '~> 4.0.0'
  s.add_development_dependency 'sass-rails', '~> 5.0.0'
  s.add_development_dependency 'pdf-inspector', '~> 1.2.0'
  s.add_development_dependency 'ffaker', '>= 1.32.1'
  s.add_development_dependency 'guard-rspec', '>= 4.2.0'
  s.add_development_dependency 'pry-rails', '>= 0.3.0'
  s.add_development_dependency 'rubocop', '>= 0.24.1'
end
