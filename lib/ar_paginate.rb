require 'active_resource'
require 'ar_paginate/paginate'
require 'ar_paginate/engine'

module ArPaginate
  class Railtie < Rails::Railtie
    initializer 'ar_paginate' do | app |
      ActiveSupport.on_load :action_view do
        require 'ar_paginate/view_helper'
      end
    end
  end
end

module ActiveResource
  class Base
    extend ArPaginate::Paginate
  end
end
