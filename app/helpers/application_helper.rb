module ApplicationHelper
  def currentPage(path)
    "active" if current_page?(path)
  end

  def nav_link(link_text, link_path)
    recognized = Rails.application.routes.recognize_path(link_path)
    class_name = recognized[:controller] === params[:controller] ? 'active' : ''

    link_to link_text, link_path, :class => "#{class_name} item"
  end

  def error_class(obj, attribute)
    obj.errors.include?(attribute) ? 'error' : ''
  end

  def error_label(obj, attribute)
    if obj.errors.include?(attribute)
      content_tag :div, obj.errors[attribute][0], class: "ui red pointing above ui label"
    else
      ''
    end
  end

end
