module Synthesis
  if defined? Rails::Railtie
    require 'rails'
    class Railtie < Rails::Railtie
      initializer 'insert_asset_package_helper' do
        require 'synthesis/asset_package'
        require 'synthesis/asset_package_helper'
        ActionView::Base.send :include, Synthesis::AssetPackageHelper
      end

      rake_tasks do
        load "tasks/asset_packager_tasks.rake"
      end
    end
  end
end
