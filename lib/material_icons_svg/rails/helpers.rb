require 'inline_svg'

module MaterialIconsSvg
  module Rails
    module ViewHelpers
      # Returns the SVG source given an icon name and family name.
      #
      # Example:
      #   material_icons_svg('heart')
      #   # => <svg>...</svg>
      def material_icons_svg(name, family: 'baseline', options: {})
        fullpath = MaterialIconsSvg::Rails::Engine.root.join('assets', 'material-icons', 'svg', name, "#{family}.svg").to_s
        inline_svg_tag(fullpath, options)
      end
    end
  end
end
