module MaterialIconsSvg
  module Rails
    class Engine < ::Rails::Engine
      initializer 'material_icons_svg.assets.precompile', group: :all do |app|
        # The directory material-icons is the complete copy of the repository
        # at https://github.com/material-icons/material-icons
        #
        # Copy the whole repository, so that we have these information:
        # license, version, README.
        app.config.assets.paths << root.join('assets', 'material-icons', 'svg').to_s

        # Fix problem with "SVG not found" in production
        # @see https://github.com/barrymieny/material_design_icons/issues/6#issuecomment-503060905
        #
        # Do you need to set a specific path? NO.
        # @see https://github.com/rails/sprockets/issues/542#issue-288657474
        app.config.assets.precompile += ['*.svg']
      end
    end
  end
end
