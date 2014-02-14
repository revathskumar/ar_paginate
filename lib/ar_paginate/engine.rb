module ArPaginate
  class Engine < ::Rails::Engine
    initializer 'ar_paginate.setup' do |app|
      app.config.assets.paths << File.join(config.root, 'vendor')
    end
  end
end
