class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  strip_attributes

  require 'open-uri'
  require 'net/http'
end
