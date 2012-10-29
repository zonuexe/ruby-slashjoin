require 'pathname'

module Slashjoin
  ALREADY_LOADED ||= {}
  ALREADY_LOADED[:pathname] = true

  module Pathname
    def / (other)
      self.join(other)
    end
  end
end

