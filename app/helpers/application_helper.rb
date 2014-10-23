module ApplicationHelper
  
  def nav_to(title, url, active=false, opts={})
    content_tag :li, class: active ? 'active' : nil do
      content_tag :a, title, opts.merge(href: url)
    end
  end
end
