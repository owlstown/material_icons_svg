# Create asset file loader that takes a fullpath filename and reads it.
# @see https://github.com/jamesmartin/inline_svg/issues/95#issuecomment-502018244
module MaterialIconsSvg
  class MyAssetFileLoader
    class FileNotFound < IOError; end
    UNREADABLE_PATH = ''

    def self.named(filename)
      File.read(filename || UNREADABLE_PATH)
    rescue Errno::ENOENT
      raise FileNotFound.new("Asset not found: #{filename}")
    end
  end
end
