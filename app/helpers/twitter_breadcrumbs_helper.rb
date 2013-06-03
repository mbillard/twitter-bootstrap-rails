module TwitterBreadcrumbsHelper
  def render_breadcrumbs(divider = '/')
    content = render :partial => 'twitter-bootstrap/breadcrumbs', :layout => false, :locals => { :divider => divider }
    if content.present? and block_given?
      capture(content, &block)
    else
      content
    end
  end
end
