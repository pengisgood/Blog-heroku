module ApplicationHelper
  def title(page_title)
    content_for :title, page_title.to_s
  end

  def markdown(text)
    options = [:hard_wrap, :autolink, :fenced_code_blocks, :prettify, :no_intra_emphasis]
    markdown_render = Redcarpet::Markdown.new(MarkdownHelper::HTMLwithCodeRay, options.inject({}) { |memo, opt| memo[opt] = true; memo })
    markdown_render.render(text).html_safe
  end

  def page_name(page_name)
    content_for :page_name, page_name
  end

  def tab_style(tab_name, page_name)
    return 'active' if tab_name == page_name
  end
end
