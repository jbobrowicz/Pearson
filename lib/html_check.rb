require_relative 'tokenizer'
require_relative 'node'

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

# p is_html("<p>blah blah blah</p>").inspect

