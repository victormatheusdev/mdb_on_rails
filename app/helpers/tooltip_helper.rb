module TooltipHelper
  def info_tooltip(content, icon: "fas fa-info-circle blue-text ", extra_class: "", placement: "top")
    content_tag(:i, "", class: icon + extra_class, title: content, data:{toggle: "tooltip",   placement: placement})
  end
  def icon_tooltip(content, icon: , placement: "top")
    content_tag(:i, "", class: icon, title: content, data:{toggle: "tooltip",   placement: placement})

  end
end
