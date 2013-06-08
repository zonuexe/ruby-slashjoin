require 'slashjoin/class'
require 'uri'

module Slashjoin
  loaded_classes[:uri] = true

  module URI
    def / (other)
      ::URI.join(self,other)
    end
  end
end

