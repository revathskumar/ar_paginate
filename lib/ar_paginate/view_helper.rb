module ArPaginate
  module ViewHelper
    def paginate collection = nil, options
      options ||= {}
      return if collection.blank?
      model = collection.first.class
      per_page = model.per_page
      start = model.start - per_page
      start = 0 if start < 0
      nxt = link_to('Next >>', url_for(options.merge(start: model.end, count: per_page)), remote:true) unless model.count < per_page
      prev = link_to('<< Previous', url_for(options.merge(start: start, count: per_page)), remote:true) unless model.start == 0
      html = ['<div class="pagination pull-right"><ul>']
      html << "<li ><span>#{prev}</span></li>" unless prev.blank?
      html << "<li ><span>Page #{(model.start/per_page) + 1}</span></li>"
      html << "<li ><span>#{nxt}</span></li>" unless nxt.blank?
      html << '</ul></div>'
      raw html.join
    end
  ::ActionView::Base.send :include, self

  end


end
