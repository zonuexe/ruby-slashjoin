require 'slashjoin/version'

module Slashjoin
  @@no_patching  ||= false
  @@use_pathname ||= false

  ALREADY_LOADED ||= {}

  def self.no_patching?
    @@no_patching
  end

  def self.use_pathname
    @@user_pathname = true
  end

  def self.user_pathname= (arg)
    @@user_pathname = arg
  end

  def self.use_pathname?
    @@use_pathname
  end
end

require 'slashjoin/string'
require 'slashjoin/uri'
require 'slashjoin/pathname'

require 'slashjoin/patching'
