require 'material_icons_svg/rails/helpers'

module MaterialIconsSvg
  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'material_icons_svg.view_helpers' do
        ActionView::Base.send :include, ViewHelpers
        InlineSvg.configure do |config|
          config.asset_file = MaterialIconsSvg::MyAssetFileLoader
        end
      end
    end
  end
end
