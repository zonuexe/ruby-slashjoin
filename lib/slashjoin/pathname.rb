require 'slashjoin/class'
require 'pathname'

module Slashjoin
  loaded_classes[:pathname] = true

  module Pathname
    def / (other)
      self.join(other)
    end
  end
end
