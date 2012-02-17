# require "html5"
# require "tokenizer"

def is_html(html_text)
  if html_text.index('<')
    tokenizer = HTML::Tokenizer.new(html_text)
    while token = tokenizer.next
      node = HTML::Node.parse(nil, 0, 0, token, false)
      return true if node.class != HTML::Text
    end
  end
  false
end
