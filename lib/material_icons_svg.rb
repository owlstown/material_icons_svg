module MaterialIconsSvg
  class << self
    def load!
      if rails?
        register_rails_engine
      end
    end

    # Check that there is Rails
    def rails?
      defined?(::Rails)
    end

    private

    def register_rails_engine
      require 'material_icons_svg/rails/engine'
      require 'material_icons_svg/rails/railtie'
    end
  end
end

MaterialIconsSvg.load!
