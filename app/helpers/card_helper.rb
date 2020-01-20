module CardHelper
  def card(options={}, &block)
    content_tag(:div, class: "card mt-2 mb-4") do

      content_tag(:div,class: "card-body") do
        if options[:title]
          card_header(options[:title]) + card_body(yield)
        else
          yield
        end
      end
    end
  end

  def card_header(options={}, &block)
    return "" if !block_given? && !options
    content_tag(:div,class: "d-flex justify-content-between") do
      if block_given? && options.empty?
        yield
      else
        content_tag(:div) do
          content_tag(:h2, class: "card-title h1 font-weight-bold ") do
            if options[:icon]
              content_tag(:i, "", class: options[:icon] + " mr-2") + " #{options[:text]}"
            else
              options[:text]
            end + (content_tag(:span) do
              info_tooltip(options[:info], extra_class: "ml-3")
            end if options[:info])
          end
        end + (content_tag(:div) do
          yield
        end if block_given?)
      end
    end
  end

  def card_body(&block)
    content_tag(:div, class: "row mt-4") do
      content_tag(:div, class: "col-md-12") do
        yield
      end
    end
  end
end
