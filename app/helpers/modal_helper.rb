module ModalHelper
  def modal_close_button(options={})
    content_tag(:button, class: "close", data:{dismiss: "modal"}) do
      content_tag(:span){ '&times;'.html_safe }
    end
  end
end
