require 'slashjoin/version'

module Slashjoin
  @@no_patch = false
  @@use_pathname = false

  # @return [Slashjoin]
  def self.no_patch
    @@no_patch = true
    return self
  end

  # return [Boolean]
  def self.no_patch?
    @@no_patch
  end

  # @return [Slashjoin]
  def self.use_pathname
    @@user_pathname = true
    return self
  end

  # @return [Boolean]
  def self.use_pathname?
    @@use_pathname
  end

  # @return [Hash]
  def self.loaded_classes
    @@loaded_classes ||= {}
  end

  # @return [Boolean]
  def self.already_loaded?
    loaded_classes.any?
  end

  # @return [Slashjoin]
  def self.patching
    require 'slashjoin/patching'
    return self
  end
end
