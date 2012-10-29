
# Error when NOT loaded 'slashjoin', 'slashjoin/{string, uri, pathname}'
raise if Slashjoin::ALREADY_LOADED.nil?

patches = {
  string: proc{
    class ::String
      include Slashjoin::String
    end
  },
  uri: proc{
    module ::URI
      class Generic
        include Slashjoin::URI
      end
    end
  },
  pathname: proc{
    class ::Pathname
      include Slashjoin::Pathname
    end
  },
}

no_lib = %w(string).map(&:to_sym)
loaded = Slashjoin::ALREADY_LOADED
all = loaded.size == 0

patches.each{ |key, patch|
  if all || loaded[key]
    (require(key.to_s) unless no_lib.include?(key)) && (puts "include #{key}.")
    #require key.to_s unless no_lib.include? key
    case patch
    when 'pathname'
      patch.call if Slashjoin::use_pathname?
    else
      patch.call
    end
  end
}

