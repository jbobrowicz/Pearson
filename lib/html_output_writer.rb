require "markaby"

class HtmlOutputWriter
  def initialize(output)
    @output = output
  end
  def write_output(items)
    mab = Markaby::Builder.new
    mab.html do
      head { title "Pearson" }
      body do
        ul do
          for n in items
            li "#{n.to_s}"
          end
        end
      end
    end
    @output << mab.to_s
  end
end
