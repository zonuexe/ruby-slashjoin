require 'slashjoin/class'

module Slashjoin
  @@no_patching  ||= false
  @@use_pathname ||= false

  @@loaded_classes ||= {}
end

require 'slashjoin/string'
require 'slashjoin/uri'
require 'slashjoin/pathname'

require 'slashjoin/patching'
