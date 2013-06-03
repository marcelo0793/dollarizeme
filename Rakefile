require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('dollarizeme', '1.0') do |p|
  p.description    = "This gem converts Pesos into dollars."
  p.url            = "http://github.com/marcelo0793/dollarizeme"
  p.author         = "Marcelo Garcia"
  p.email          = "marcelo_garcia13@hotmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }