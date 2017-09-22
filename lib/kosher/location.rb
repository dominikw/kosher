module Kosher
  class Location
    include Virtus

    attribute :country, String
    attribute :state,   String
  end
end
