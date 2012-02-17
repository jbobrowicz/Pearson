# require "html5"
# require "tokenizer"

def is_html(html_text)
  if html_text.index('<') #might be html
    tokenizer = HTML::Tokenizer.new(html_text)
    while token = tokenizer.next
      node = HTML::Node.parse(nil, 0, 0, token, false)
      # if any nodes are not text, then it must be HTML
      return true if node.class != HTML::Text
    end
  end
  false
end

htm = Object::HTML.new
#p is_html('kkkk<p>')
p htm.inspect