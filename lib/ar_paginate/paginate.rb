module ArPaginate
  module Paginate
    @@count_per_page = 10
    def paginate options = {}

      options[:count] = per_page
      options[:start] = 0 if options[:start].blank?
      find :all, params: options
    end

    def per_page
      @@count_per_page ||= 10
    end

    def per_page= count
      @@count_per_page = count
    end
  end
end
