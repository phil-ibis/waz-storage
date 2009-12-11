$:.unshift(File.dirname(__FILE__))
require 'waz/storage/base'
require 'waz/storage/core_service'
require 'waz/storage/exceptions'
require 'waz/storage/version'
require 'waz/storage/validation_rules'

# It will depende on which version of Ruby (or if you have Rails) 
# but this method is required so we will add it the String class.
unless String.method_defined? :start_with?
  class String
    def start_with?(prefix)
      prefix = prefix.to_s
      self[0, prefix.length] == prefix
    end
  end
end