module ArPaginate
  class Engine < ::Rails::Engine
    initializer 'ar_paginate.setup' do |app|
      app.config.assets.paths << File.join(config.root, 'vendor')
      p app.config.assets.paths
    end
  end
end
