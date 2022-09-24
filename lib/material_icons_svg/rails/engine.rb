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
      end
    end
  end
end
