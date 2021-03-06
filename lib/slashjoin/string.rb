require 'slashjoin/class'
require 'uri'
require 'pathname'

module Slashjoin
  loaded_classes[:string] = true
  module String
    def / (other)
      case
      when self =~ ::URI.regexp
        ::URI.join(self, other)
      when Slashjoin::use_pathname?
        ::Pathname.new(self).join(other)
      else
        ::File.join(self, other)
      end
    end
  end
end

