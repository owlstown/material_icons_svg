require 'inline_svg'

module MaterialIconsSvg
  module Rails
    module ViewHelpers
      # Returns the SVG source given an icon name and family name.
      #
      # Example:
      #   material_icons_svg('heart')
      #   # => <svg>...</svg>
      def material_icons_svg(name, family = 'baseline', options = {})
        inline_svg_tag("#{name}/#{family}.svg", options)
      end
    end
  end
end
