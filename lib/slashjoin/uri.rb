require 'uri'

module Slashjoin
  ALREADY_LOADED ||= {}
  ALREADY_LOADED[:uri] = true

  module URI
    def / (other)
      ::URI.join(self,other)
    end
  end
end

