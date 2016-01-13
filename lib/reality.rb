require 'infoboxer'
require 'yaml'

module Reality
  require_relative 'config'
  require_relative 'reality/infoboxer_templates'

  # basic functionality
  %w[measure geo].each do |mod|
    require_relative "reality/#{mod}"
  end

  # entities
  %w[entity country city].each do |mod|
    require_relative "reality/#{mod}"
  end

  # mixins
  %w[weather].each do |mod|
    require_relative "reality/#{mod}"
  end
end
