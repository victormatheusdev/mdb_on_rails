module NavbarHelper
  def sidebar_li(text, options={})
    icon_and_text = content_tag(:i, "", class: options[:icon]) + " #{text}"
    content_tag :li, class: options[:li_class], data: options[:data] do
      link_to_if options[:href], icon_and_text, options[:href], class: options[:class] do
        icon_and_text
      end
    end
  end
end
