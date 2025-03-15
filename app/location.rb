require_relative 'parentable'

module App
  class Location < ActiveRecord::Base
    TYPES = { region: 0, district: 1, city: 2, street: 3, address: 4 }
    DEFAULT_TYPE = TYPES[:region]

    enum :location_type, TYPES

    include Parentable
  end
end
