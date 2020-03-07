module BadgeHelper
  def badge(content, options={})
    options[:class] ||= ""
    options[:class] += " badge-#{options[:color]}" if options[:color]
    content_tag(:span, class: "badge #{options[:class]}") do
      if options[:icon]
        content_tag(:i, "", class: options[:icon]) + " #{content}"
      else
        content
      end
    end
  end

  def pill(content, options={})
    options[:class] ||= ""
    options[:class] += " badge-pill"
    badge(content, options)
  end
end
