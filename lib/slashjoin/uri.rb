require 'uri'

module Slashjoin
  ALREADY_LOADED ||= {}
  ALREADY_LOADED[:uri] = true

  module URI
    def / (other)
      self.join(other)
    end
  end
end

