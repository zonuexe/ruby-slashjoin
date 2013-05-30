require 'slashjoin/version'

module Slashjoin
  def self.no_patching?
    @@no_patching
  end

  # @return [Slashjoin]
  def self.use_pathname
    @@user_pathname = true
    return self
  end

  # @return [Boolean]
  def self.use_pathname?
    @@use_pathname ||= false
  end

  # @return [Hash]
  def self.loaded_classes
    @@loaded_classes ||= {}
  end

  # @return [Boolean]
  def self.already_loaded?
    loaded_classes.any?
  end
end
