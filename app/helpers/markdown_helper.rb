# create a custom renderer that allows highlighting of code blocks
module MarkdownHelper
  class HTMLwithCodeRay < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div(:tab_width => 2)
    end
  end
end
