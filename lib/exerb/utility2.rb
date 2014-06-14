
#==============================================================================#
# $Id: utility2.rb,v 1.2 2005/04/17 15:17:26 yuya Exp $
#==============================================================================#

module Exerb
end # Exerb

#==============================================================================#

module Exerb::Utility2

  def self.loaded_features(reject_list = [])
    reject_list << File.expand_path(__FILE__)

    __LOADED_FEATURES = $LOADED_FEATURES.clone  # Don't change $LOADED_FEATURES
    if RUBY_VERSION >= "1.9.3"
      ['enc/encdb.so', 'enc/utf_16le.so',
        'enc/trans/transdb.so', 'enc/trans/utf_16_32.so',
        'enc/trans/single_byte.so'].each do |enc|

        unless __LOADED_FEATURES.find { |f| f.include?(enc) }
          __LOADED_FEATURES << enc
        end
      end
    end

    features = __LOADED_FEATURES.collect { |filename|
      case filename.downcase
      when /\.rb$/o  then type = "script"
      when /\.so$/o  then type = "extension-library"
      when /\.dll$/o then type = "extension-library"
      end
      [type, filename]
    }.collect { |type, filename|
      if File.exist?(filename)
        [type, require_name(filename), filename]
      else
        $LOAD_PATH.collect { |dirpath|
          [type, filename, File.join(dirpath, filename)]
        }.find { |type, filename, filepath|
          File.exist?(filepath)
        }
      end
    }.compact.reject { |type, filename, filepath|
      type.nil?
    }.reject { |type, filename, filepath|
      reject_list.index(File.expand_path(filepath))
    }

    detected_libraries.each do |path|
      dll = ["extension-library", File.basename(path).downcase, path]
      features << dll
    end

    return features
  end

  def self.require_name(filename)
    # FIXED BUG, if relative path in $LOAD_PATH. like '.', '..', ..
    path = $LOAD_PATH.find { |path| File.dirname(filename) == File.expand_path(path) }
    path = $LOAD_PATH.find { |path| filename.start_with?(File.expand_path(path)) } if !path
    if path
      # remove both the path and the platform from the filename
      return filename.gsub("#{File.expand_path(path)}/", "").gsub("#{RUBY_PLATFORM}/", "")
    end

    filename
  end

  # Code copied and adapted from Ocra project
  # http://ocra.rubyforge.org/
  def self.loaded_libraries
    require "Win32API"

    enumprocessmodules = Win32API.new('psapi',    'EnumProcessModules', ['L','P','L','P'], 'B')
    getmodulefilename  = Win32API.new('kernel32', 'GetModuleFileName',  ['L','P','L'], 'L')
    getcurrentprocess  = Win32API.new('kernel32', 'GetCurrentProcess',  ['V'], 'L')

    bytes_needed = 4 * 32
    module_handle_buffer = nil
    process_handle = getcurrentprocess.call

    loop do
      module_handle_buffer = "\x00" * bytes_needed
      bytes_needed_buffer = [0].pack("I")

      r = enumprocessmodules.call(process_handle, module_handle_buffer,
            module_handle_buffer.size, bytes_needed_buffer)

      bytes_needed = bytes_needed_buffer.unpack("I")[0]
      break if bytes_needed <= module_handle_buffer.size
    end

    handles = module_handle_buffer.unpack("I*")
    handles.select { |handle| handle > 0 }.map do |handle|
      str = "\x00" * 256
      modulefilename_length = getmodulefilename.call(handle, str, str.size)
      File.expand_path str[0, modulefilename_length]
    end
  end

  def self.detected_libraries
    require "rbconfig"

    exec_prefix = RbConfig::CONFIG["exec_prefix"]
    libruby_so  = RbConfig::CONFIG["LIBRUBY_SO"]
    loaded      = loaded_libraries

    detected = loaded.select { |path|
      normalized = path.downcase
      path.include?(exec_prefix) &&
        File.extname(normalized) == ".dll" &&
        File.basename(normalized) != libruby_so
    }

    return detected
  end
end # Exerb::Utility2

#==============================================================================#
#==============================================================================#
